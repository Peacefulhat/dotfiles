#!/bin/zsh
#simple emacs mode getter via wget
file_path=$1
while read -r line; do
    if [[ ${line:0:1} == "#" ]]; then
        # out=$(echo "$line" | cut -b 2-) other way to that
        out="${line:1}";
        echo "$out skipping..."
        continue
    fi
    wget "$line"
done < "$file_path"

