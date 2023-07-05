# Define csv file
$csvfile = "weapons.csv"

# Initial line number
$lineno = 0

# Read the file line by line
Get-Content $csvfile | ForEach-Object {
    # Increment line number
    $lineno++

    # Skip first line
    if ($lineno -eq 1) {
        Write-Host "Skipping header line"
        continue
    }

    # Separating column names, which are the properties
    if ($lineno -eq 2) {
        $properties = $_ -split ';'
        Write-Host "Reading properties: $properties"
        continue
    }

    # Separating data for each file
    $data = $_ -split ';'
    Write-Host "Reading data: $data"

    $filename = $data[0]

    # Define path
    $filepath = "../iwds/zz.iwd/weapons/mp/$filename"
    Write-Host "Filepath is: $filepath"

    # Iterate over properties and data
    for ($pidx=1; $pidx -lt $data.Length; $pidx++) {
        # Extract property and value
        $property_string = $properties[$pidx]
        $value = $data[$pidx]
        Write-Host "Property: $property_string"
        Write-Host "Value: $value"

        # Multiple properties might be separated by ','
        $multiple_properties = $property_string -split ','
        Write-Host "Multiple properties: $multiple_properties"

        foreach ($property in $multiple_properties) {
            Write-Host "Processing property: $property"
            # Use regex to replace the string
            (Get-Content $filepath) |
            Foreach-Object { $_ -replace "(${property}\\\\)[^\\\\]*\\\\", "`${1}${value}\\" } |
            Set-Content $filepath
        }
    }
}
