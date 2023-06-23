#!/bin/bash

#
# Banafshe Bamdad
# Fr Jun 23 10:34:19
# To change the name of all .git directory to git-orig use the following command
# Usage: bash change_git_to_git-orig.sh /path/to/search [d|f] search_name postfix
# e.g. bash change_git_to_git-orig.sh /home/banafshe/catkin_ws d .git orig
#
# $1: /path/to/search
# $2: search type [d|f]
# $3: search name
# $4: postfix
#

search_path=$1
search_type=$2
search_name=$3
postfix=$4

find "$search_path" -type $search_type -name "$search_name" | while read -r file_name; do
    if [[ "${file_name}" != "$search_path/$search_name" ]]; then
        new_name="${file_name}-$postfix"
	mv "$file_name" "$new_name"
        echo "Renamed $file_name to $new_name"
    fi
done
