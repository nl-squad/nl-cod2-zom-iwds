#!/bin/bash
cwd="$(dirname "$(realpath "$0")")"
library_path="$HOME/cod2/library"
local_library_path="$cwd/library"

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

echo -e "\033[0;36mRestarting docker-compose...\033[0m"
detach_arg=$([[ $2 == "detach" ]] && echo "-d")
(cd $cwd && docker-compose -f $1 up --force-recreate $detach_arg)
