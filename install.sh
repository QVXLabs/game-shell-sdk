#!/bin/bash

# default configuration
BUILD_PATH="build"
PREFIX_PATH="${PWD}/gcc"

BINUTILS_URL="https://sourceware.org/pub/binutils/releases/binutils-2.44.tar.gz"
GMP_URL="https://gmplib.org/download/gmp/gmp-6.3.0.tar.xz"
MPFR_URL="https://www.mpfr.org/mpfr-current/mpfr-4.2.1.tar.gz"
MPC_URL="https://ftp.gnu.org/gnu/mpc/mpc-1.3.1.tar.gz"
GCC_URL="https://ftp.gnu.org/gnu/gcc/gcc-14.2.0/gcc-14.2.0.tar.gz"

# other vars
SYSROOT_PATH="${PWD}/sysroot/ClockworkOS/0.5"

function error() {
    echo >&2 -e "\033[0;31m [ERROR]: $1 \033[0m"
    exit -1
}

function info() {
    echo >&2 -e "\033[0;32m [INFO]: $1 \033[0m"
}

function pushd() {
    command pushd "$@" > /dev/null
}

function popd() {
    command popd "$@" > /dev/null
}

function num_cpus() {
	local py=$(command -v python || command -v python3)
	if [ -z "$py" ]; then
		error "Python not found on system"
	fi
	"$py" -c "import os; print(os.cpu_count())"	
}

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
        info "$tarball not found, downloading"
	wget -q "$url" -O "$tarball"
	if [ $? -ne 0 ]; then
	    error "Download failed"
	else
	    info "Download successful"
        fi
    else
	info "$tarball already exists, skipping download"
    fi
    return 0
}

extract_tarball() {
    local tarball=$1
    local src_dir=$(tarball_directory "$tarball")
    if [ ! -d "$src_dir" ]; then
	info "unpacking $tarball"
	tar -xf "$tarball"
    else
	info "$tarball already extracted"
    fi
    return 0
}

integrate_gcc_srctree() {
    local gcc_src=$1
    local gmp_src=$2
    local mpfr_src=$3
    local mpc_src=$4
    info "Integrating GMP, MPFR and MPC into GCC source tree"
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
    local build_log="../binutils.log"
    local ncpus=$(num_cpus)

    mkdir -p "${bld_path}"
    pushd "${bld_path}"

    touch "$build_log"
    info "Compiling Binutils with ${ncpus} processes -> $(realpath $build_log)"

    ../"${src_path}"/configure \
      --prefix="$prefix_path" \
      --with-sysroot="$sysroot_path" \
      --disable-nls \
      --disable-multilib \
      &> "$build_log"
    make -j"$ncpus" >> "$build_log" 2>&1
    make install -j"$ncpus" >> "$build_log" 2>&1
    popd
    return 0
}

build_gcc() {
    local src_path="$1"
    local prefix_path="$2"
    local sysroot_path="$3"
    local bld_path="${src_path}-build"
    local build_log="../gcc.log"
    local ncpus=$(num_cpus)

    mkdir -p "${bld_path}"
    pushd "${bld_path}"

    touch "$build_log"
    info "Compiling GCC with ${ncpus} processes -> $(realpath $build_log)"

    ../"${src_path}"/configure \
      --prefix="$prefix_path" \
      --with-sysroot="$sysroot_path" \
      --target=arm-linux-gnueabihf \
      --enable-languages=c,c++ \
      --disable-nls \
      --disable-multilib &> "$build_log"
    make all-gcc -j"$ncpus" >> "$build_log" 2>&1
    make install-gcc -j"$ncpus" >> "$build_log" 2>&1
    popd
    return 0    
}

install() {
    # made output & build directory
    mkdir -p "$PREFIX_PATH"
    mkdir -p "$BUILD_PATH"

    # download & extract src
    local download_path="$BUILD_PATH/download/" 
    mkdir -p "$download_path"

    local download_url_list=(
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
    info "Building Binutils..."
    pushd "$BUILD_PATH"
    build_binutils \
	"$(tarball_directory download/$(tarball_filename $BINUTILS_URL))" \
	"${PREFIX_PATH}" \
	"${SYSROOT_PATH}"
    popd

    # compile gcc
    info "Building GCC..."
    pushd "$BUILD_PATH"
    build_gcc \
	"$(tarball_directory download/$(tarball_filename $GCC_URL))" \
	"${PREFIX_PATH}" \
	"${SYSROOT_PATH}"    
    popd    
}

clean() {
    info "Cleaning $PREFIX_PATH and $BUILD_PATH"
    rm -rf "$PREFIX_PATH"
    rm -rf "$BUILD_PATH"
}

usage() {
    info "Install script for GameShell Dev SDK"
    info "Released under the Apache 2.0 licnse"
    info ""

    info "Usage"
    info "-a {clean|install}"
    info "\t\tSet the desired action, clean or install"
    info "\t\t\tclean:   cleans the compiler and tools"
    info "\t\t\tinstall: installs the compiler and tools"

    info "-s {sysroot path}"
    info "\t\tOverrides default sysroot path, currently $SYSROOT_PATH"

    info "-b"
    info "\t\tOverrides default build path, currently $BUILD_PATH"
    info ""

    exit 0
}

if [[ ${#} -eq 0 ]]; then
    usage
else
    ACTION="install"
    while getopts ":a:s:b" arg;
    do
	case ${arg} in
	    a)
		ACTION="$OPTARG"
		;;
	    s)
		SYSROOT_PATH="$OPTARG"
		;;
	    b)
		BUILD_PATH="$OPTARG"
		;;
	    *)
		usage
		;;
	esac
    done
    if [ "$ACTION" = "clean" ] ; then
	clean
    elif [ "$ACTION" = "install" ] ; then
	install
    else
	error "Unknown Action: $ACTION"
    fi
fi
		
