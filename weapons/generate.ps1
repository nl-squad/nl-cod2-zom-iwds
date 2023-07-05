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

    # Get the content of the file
    $content = Get-Content $filepath

    # Iterate over properties and data
    for ($pidx=1; $pidx -lt $data.Length; $pidx++) {
        # Extract property and value
        $property_string = $properties[$pidx]
        $value = $data[$pidx]

        # Skip if the property value is empty
        if ($property_string -eq ' ') {
            continue
        }

        # Multiple properties might be separated by ','
        $multiple_properties = $property_string -split ','

        foreach ($property in $multiple_properties) {
            # Define the replacement pattern
            $replacementPattern = "(${property}\\\\)([^\\\\]*)(\\\\)"

            # Check if the value needs to be replaced
            if ($content -match $replacementPattern) {
                $oldValue = $matches[2]

                if ($oldValue -ne $value) {
                    # Perform the replacement
                    $newContent = $content -replace $replacementPattern, "`$1${value}`$3"

                    # Write the updated content back to the file
                    $newContent | Out-File $filepath -Encoding utf8 -NoNewline

                    Write-Host "Updated property '$property' from '$oldValue' to '$value' in file '$filename'"
                }
            }
        }
    }
}
