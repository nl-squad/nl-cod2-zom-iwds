#!/bin/bash
cwd="$(dirname "$(realpath "$0")")"
library_path="$HOME/cod2/library"
local_library_path="$cwd/library"
stack_name="$(basename $cwd)"

if [ ! -d "$library_path" ]; then
    echo -e "\031[0;36mError: Library directory '$library_path' does not exist.\033[0m"
    exit 1
fi

rsync -va --delete "$library_path/" "$local_library_path/"
echo -e "\033[0;36mSynced local library directory\033[0m"

rsync -va --delete --exclude=gametypes "$local_library_path/scripts/" "$cwd/nl/maps/mp/"
echo -e "\033[0;36mCopied scripts/ to nl/maps/mp/\033[0m"

cp $local_library_path/000empty.iwd $cwd/nl/
echo -e "\033[0;36mCopied 000empty.iwd to nl/\033[0m"

echo -e "\033[0;36mRestarting docker stack...\033[0m"
(cd $cwd && docker stack deploy -c $1 $stack_name)
