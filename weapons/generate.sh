#!/bin/bash

# Read the headers from the second line
IFS=";" read -a headers <<< "$(sed -n 2p weapons.csv)"

# Skip the first two lines
tail -n +3 weapons.csv | while IFS=";" read -a line
do
    # Construct the file path
    FILEPATH="../iwds/zz.iwd/weapons/${line[0]}"

    # Loop over the headers
    for ((i=1; i<${#headers[@]}; i++))
    do
        # Check if there are multiple properties in the header
        if [[ ${headers[i]} == *","* ]]; then
            # Split the properties and values by comma
            IFS="," read -a properties <<< "${headers[i]}"
            IFS="," read -a values <<< "${line[i]}"

            # Replace each property
            for ((j=0; j<${#properties[@]}; j++))
            do
                sed -i "s/\(${properties[j]}\\.*\\\).*/\1${values[j]}/" "$FILEPATH"
            done
        else
            # Replace a single property
            sed -i "s/\(${headers[i]}\\.*\\\).*/\1${line[i]}/" "$FILEPATH"
        fi
    done
done
