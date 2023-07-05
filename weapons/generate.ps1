# define csv file
$csvfile = "weapons.csv"

# initial line number
$lineno = 0

# read the file line by line
Get-Content $csvfile | ForEach-Object {
    # increment line number
    $lineno++

    # skip first line
    if ($lineno -eq 1) {
        continue
    }

    # separating column names, which are the properties
    if ($lineno -eq 2) {
        $properties = $_ -split ';'
        continue
    }

    # separating data for each file
    $data = $_ -split ';'

    $filename = $data[0]

    # define path
    $filepath = "../iwds/zz.iwd/weapons/mp/$filename"

    # iterate over properties and data
    for ($pidx=1; $pidx -lt $data.Length; $pidx++) {
        # extract property and value
        $property_string = $properties[$pidx]
        $value = $data[$pidx]

        # multiple properties might be separated by ','
        $multiple_properties = $property_string -split ','

        foreach ($property in $multiple_properties) {
            # use regex to replace the string
            (Get-Content $filepath) |
            Foreach-Object { $_ -replace "(${property}\\\\)[^\\\\]*\\\\", "`${1}${value}\\" } |
            Set-Content $filepath
        }
    }
}
