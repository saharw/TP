#!/bin/bash


src_dir=$1
dest_dir=$2


mkdir -p "$dest_dir"

copy_file() {
    local file_path=$1
    local dest_path=$2
    local file_name=$(basename "$file_path")

    while [ -e "$dest_path/$file_name" ]; do
       
        base_name="${file_name%.*}"
        extension="${file_name##*.}"
        if [[ "$file_name" =~ \.[^./]+$ ]]; then
            file_name="${base_name%_*}_$((++suffix)).$extension"
        else
            file_name="${base_name}_$((++suffix))"
        fi
    done


    cp "$file_path" "$dest_path/$file_name"
}

export -f copy_file
export dest_dir


find "$src_dir" -type f -exec bash -c 'copy_file "$0" "$dest_dir"' {} \;