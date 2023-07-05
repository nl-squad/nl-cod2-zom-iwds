# Define csv file
$csvfile = "weapons.csv"

# Initial line number
$lineno = 0

# Read the file into an array
$lines = Get-Content $csvfile

# Iterate over each line
foreach($line in $lines) {
    # Increment line number
    $lineno++

    # Skip first line
    if ($lineno -eq 1) {
        continue
    }

    # Separating column names, which are the properties
    if ($lineno -eq 2) {
        $properties = $line -split ';'
        continue
    }

    # Separating data for each file
    $data = $line -split ';'

    $filename = $data[0]

    # Define path
    $filepath = "../iwds/zz.iwd/weapons/mp/$filename"

    # Iterate over properties and data
    for ($pidx=1; $pidx -lt $data.Length; $pidx++) {
        # Extract property and value
        $property_string = $properties[$pidx]
        $value = $data[$pidx]

        # Multiple properties might be separated by ','
        $multiple_properties = $property_string -split ','

        foreach ($property in $multiple_properties) {
            Write-Host "Updating property '$property' with value '$value' in file '$filename'"
            # Use regex to replace the string
            (Get-Content $filepath) |
            Foreach-Object { $_ -replace "(${property}\\\\)[^\\\\]*\\\\", "`${1}${value}\\" } |
            Out-File $filepath -Encoding utf8 -NoNewline
        }
    }
    Write-Host "Processed: $filename"
}
