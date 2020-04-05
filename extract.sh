#!/bin/bash

for i in *; do
	if [[ -f "$i" && "$i" != "extract.sh" ]]; then
		dir="${i::-7}"
		mkdir "$dir"
		cp "$i" "$dir/."
		cd "$dir"
		7z x "$i"
		cd ..
	fi
done
