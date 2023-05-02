#!/bin/bash
cwd="$(dirname "$(realpath "$0")")"

library_path="$HOME/cod2/Library"
if [ ! -d "$library_path" ]; then
    echo -e "\031[0;36mError: Library directory '$library_path' does not exist.\033[0m"
    exit 1
fi

echo -e "\033[0;36mSyncing library directory...\033[0m"
local_library_path="$cwd/library"
rsync -a --delete --exclude='.git' --exclude='.github' "$library_path/" "$local_library_path/"

echo -e "\033[0;36mCopying map .gsc files...\033[0m"
find "$local_library_path/maps/mp" -type f -iname "*.gsc" -exec cp {} "$cwd/nl/maps/mp" \;

echo -e "\033[0;36mCreating 000empty.iwd...\033[0m"
temp_dir=./tmp-000empty
mkdir -p "${temp_dir}/soundaliases"
mkdir -p "${temp_dir}/maps/mp"

timestamp=$(date +"%Y_%m_%d_%H_%M_%S")
echo " - soundaliases/nl_empty.csv (timestamp=$timestamp)"
cat << EOF > "${temp_dir}/soundaliases/nl_empty.csv"
name,sequence,file,vol_min,vol_max,vol_mod,pitch_min,pitch_max,dist_min,dist_max,channel,type,probability,loop,masterslave,loadspec,subtitle,compression,secondaryaliasname,volumefalloffcurve,startdelay,speakermap,reverb,lfe percentage
,,,,,,,,,,,,,,,,,,,,,,,
,,,,,,,,,,,,,,,,,,,,,,,
nl_empty_${timestamp},,null.wav,1,1,,,,,,music,loaded,,nonlooping,,,,,,,,,,
EOF

files=$(find ~/cod2/Library -maxdepth 1 -type f -name "*.iwd")
for file in $files; do
    filename=$(basename "$file" .iwd)
    echo " - maps/mp/${filename}.csv"
    touch "${temp_dir}/maps/mp/${filename}.csv"
done

rm $cwd/nl/000empty.iwd
(cd $temp_dir && zip -q -r $cwd/nl/000empty.iwd .)
chmod 744 $cwd/nl/000empty.iwd # make this readable for reverse-proxy
rm -r "${temp_dir}"

echo -e "\033[0;36mRestarting docker-compose...\033[0m"

detach_arg=$([[ $1 == "detach" ]] && echo "-d")
(cd $cwd && docker-compose up --force-recreate $detach_arg)
