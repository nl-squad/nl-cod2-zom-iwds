#!/bin/bash

# define csv file
csvfile="weapons.csv"

# initial line number
lineno=0

# read the file line by line
while IFS= read -r line
do
    # increment line number
    ((lineno++))

    # skip first line
    if ((lineno == 1)); then
        continue
    fi

    # separating column names, which are the properties
    if ((lineno == 2)); then
        IFS=';' read -r -a properties <<< "$line"
        continue
    fi

    # separating data for each file
    IFS=';' read -r -a data <<< "$line"

    filename=${data[0]}
    
    # define path
    filepath="../iwds/zz.iwd/weapons/mp/$filename"

    # iterate over properties and data
    for ((pidx=1; pidx<${#data[@]}; pidx++))
    do
        # extract property and value
        property_string=${properties[$pidx]}
        value=${data[$pidx]}

        # multiple properties might be separated by ','
        IFS=',' read -r -a multiple_properties <<< "$property_string"

        for property in "${multiple_properties[@]}"
        do
            sed -i '' "s/\(${property}\\\\\)[^\\\\]*\\\\/\1${value}\\\\/g" $filepath

        done
    done

done < "$csvfile"
