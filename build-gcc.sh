#!/bin/bash


# configuration
BUILD_PATH="build"
BINUTILS_URL="https://sourceware.org/pub/binutils/releases/binutils-2.44.tar.gz"
GMP_URL="https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz"
MPFR_URL="https://www.mpfr.org/mpfr-current/mpfr-4.2.1.tar.gz"
MPC_URL="https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz"
GCC_URL="https://ftp.gnu.org/gnu/gcc/gcc-14.2.0/gcc-14.2.0.tar.gz"

# build vars
PREFIX_PATH="${PWD}/gcc/ClockworkOS/0.5"
SYSROOT_PATH="${PWD}/sysroot/ClockworkOS/0.5"

tarball_filename() {
    echo "$(basename $1)"
}

tarball_directory() {
    local tarball_file="$(basename $1)"
    local tarball_dir="${tarball_file%.tar.*}"
    echo "${tarball_dir}"
}

download_tarball() {
    local url=$1
    local tarball=$(tarball_filename "$url")

    if [ ! -f "$tarball" ]; then
	echo "$tarball not found, downloading"
	wget -q "$url" -O "$tarball"
	if [ $? -ne 0 ]; then
	    echo "Download failed"
	    return 1
	else
	    echo "Download successful"
        fi
    else
	echo "$tarball already exists, skipping download"
    fi
    return 0
}

extract_tarball() {
    local tarball=$1
    local src_dir=$(tarball_directory "$tarball")
    if [ ! -d "$src_dir" ]; then
	echo "unpacking $tarball"
	tar -xf "$tarball"
    else
	echo "$tarball already extracted"
    fi
    return 0
}

integrate_gcc_srctree() {
    local gcc_src=$1
    local gmp_src=$2
    local mpfr_src=$3
    local mpc_src=$4
    echo "Integrating GMP, MPFR and MPC into GCC source tree"
    ln -s "../$gmp_src" "${gcc_src}/gmp"
    ln -s "../$mpfr_src" "${gcc_src}/mpfr"
    ln -s "../$mpc_src" "${gcc_src}/mpc"
    return 0
}

build_binutils() {
    local src_path="$1"
    local prefix_path="$2"
    local sysroot_path="$3"
    local bld_path="${src_path}-build"

    mkdir -p "${bld_path}"
    pushd "${bld_path}"
    ../"${src_path}"/configure \
      --prefix="$prefix_path" \
      --with-sysroot="$sysroot_path" \
      --disable-nls \
      --disable-multilib
    make && make install
    popd
    return 0
}

build_gcc() {
    local src_path="$1"
    local prefix_path="$2"
    local sysroot_path="$3"
    local bld_path="${src_path}-build"

    mkdir -p "${bld_path}"
    pushd "${bld_path}"
    ../"${src_path}"/configure \
      --prefix="$prefix_path" \
      --with-sysroot="$sysroot_path" \
      --target=arm-linux-gnueabihf \
      --enable-languages=c,c++ \
      --disable-nls \
      --disable-multilib 
    make all-gcc && make install-gcc
    popd
    return 0    
}

# download & extract src
download_path="$BUILD_PATH/download/" 
mkdir -p "$download_path"

download_url_list=(
    "$BINUTILS_URL"
    "$GMP_URL"
    "$MPFR_URL"
    "$MPC_URL"
    "$GCC_URL"
)
for url in "${download_url_list[@]}"; do
    # download object
    pushd "$download_path"
    download_tarball "$url"
    popd
    # extract object
    pushd "$BUILD_PATH"
    extract_tarball "download/$(tarball_filename "$url")"
    popd
done

# prepare gcc src tree byt placing gmp, mpfr & mpc inside
pushd "$BUILD_PATH"
integrate_gcc_srctree \
    "$(tarball_directory download/$(tarball_filename $GCC_URL))" \
    "$(tarball_directory download/$(tarball_filename $GMP_URL))" \
    "$(tarball_directory download/$(tarball_filename $MPFR_URL))" \
    "$(tarball_directory download/$(tarball_filename $MPC_URL))"
popd

# compile bin-utils
echo "Building Binnnutils..."
pushd "$BUILD_PATH"
build_binutils \
    "$(tarball_directory download/$(tarball_filename $BINUTILS_URL))" \
    "${PREFIX_PATH}" \
    "${SYSROOT_PATH}"
popd

# compile gcc
echo "Building GCC..."
pushd "$BUILD_PATH"
build_gcc \
    "$(tarball_directory download/$(tarball_filename $GCC_URL))" \
    "${PREFIX_PATH}" \
    "${SYSROOT_PATH}"    
popd

