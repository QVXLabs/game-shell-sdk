#! /bin/bash

COLOR_OFF='\033[0m'
COLOR_GRN='\033[0;32m'
COLOR_YLW='\033[0;33m'

function log_status() {
	echo -e "${COLOR_GRN}[game-shell-sdk] $1${COLOR_OFF}"	
}

function log_info() {
	echo -e "[game-shell-sdk] $1"
}

function log_warning() {
	echo -e "${COLOR_YLW}[game-shell-sdk] $1${COLOR_OFF}"
}

function setup_docker_buildx() {
	docker buildx create --name gameshellsdk
	docker buildx inspect gameshellsdk --bootstrap
	docker run --rm --privileged multiarch/qemu-user-static --reset -p yes
	return 0
}

function verify_md5() {
	local file_path=$1
	local file_md5=$2
	local computed_md5=$(md5sum "$file_path" | awk '{print $1}')

	[[ "$computed_md5" == "$file_md5" ]]
}

function download_img() {
	local img_url=$1
	local img_path=$2
	local img_md5=$3
	local img_file="${img_path}/$(basename ${img_url} | sed 's/\.[^.]*$//')"

	# check if image file already exists and MD5 is correct
	if [[ -f "$img_file" ]] && verify_md5 "$img_file" "$img_md5"; then
		echo "$img_file"
		return 2
	fi

	# attempt to download & dcompress image
	if wget -qO- "$img_url" | bzcat > "$img_file"; then
        echo "$img_file"
        return 0
    else
        echo ""
        return 1
    fi
}

function mount_img() {
	local img_file=$1
	local img_file_dirty="${img_file}-dirty"
	local passwd=$2
	local img_mount="$(dirname "${img_file}")/mnt"
	mkdir -p "$img_mount"
	cp "$img_file" "$img_file_dirty"
	local offset=$(( $(fdisk -l "$img_file_dirty" | \
						   awk '/Linux/ {print $2}') * 512 ))
	echo $passwd | sudo -S mount -o loop,offset="$offset" \
						"$img_file_dirty" \
						"$img_mount"
    echo $passwd | sudo -S chown -R $(id -un):$(id -gn) "$img_mount"
	echo "$img_mount"
}

function build_docker_img() {
	local img_path=$1
	local docker_img_name=$2
	docker buildx build --platform linux/arm/v7 \
		   --builder gameshellsdk \
		   --output type=docker \
		   -t "qvxlabs/gameshellsdk/$docker_img_name" \
		   "$img_path"
	return 0
}

function clean_up() {
	local img_mount=$1
	local img_file_dirty="${2}-dirty"
	local passwd=$3
	echo $passwd | sudo -S umount "$img_mount"
	rmdir "$img_mount"
	rm "$img_file_dirty"
	return 0
}

# request sudo (needed for script)
log_info "Please enter password for sudo rights: "
read -s PSSWD

# create docker buildx builder
log_status "Create docker buildx builder"
setup_docker_buildx

# for each image in image_lists.txt create docker image
while IFS=',' read -r path url md5; do

	# download image
	log_status "Downloading $url"
	img_file="$(download_img "$url" "$path" "$md5")"
	ret_code=$?
	if [[ $ret_code -eq 0 ]]; then
		log_info "Image downloaded sucessfully: $img_file"
	elif [[ $ret_code -eq 1 ]]; then
		log_warning "Failed to download image ($url)."
		continue
	elif [[ $ret_code -eq 2 ]]; then
		log_info "Image already exists: $img_file"
	fi

	# get root filesystem offset, mount image & update user/groups
	log_status "Mounting $img_file"
	img_mount="$(mount_img "$img_file" "$PSSWD")"

	# build docker image
	log_status "Build Docker Image"
	build_docker_img "$path" "clockworkos:0.5"

	# unmount image & delete temp image
	clean_up "$img_mount" "$img_file" "$PSSWD"
done < image_list.txt
