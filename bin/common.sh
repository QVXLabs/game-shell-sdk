#!/bin/bash

function mount_volume_flag_list() {
    local volume_mounts=()
    for dir in "$@"; do
	volume_mounts+=("-v $(realpath "$dir"):$(realpath "$dir")")
    done
    echo "${volume_mounts[@]}"
}
