# Define the path to the Excel file and the output tfvars file
$excelFilePath = ".\rg_details.xlsx"
$outputFilePath = ".\rg_map.tfvars"

# Read the Excel file
$rgDetails = Import-Excel -Path $excelFilePath

# Create a string to hold the tfvars content
$tfvarsContent = @"
rg-map = {
"@"

# Loop through the Excel data and construct the tfvars content
ForEach ($r in $rgDetails) {
    $tfvarsContent += "`"$($r.rg_name)`": `" + $($r.rg_location) + `",` + "`n" 
}

# Remove the trailing comma
$tfvarsContent = $tfvarsContent.TrimEnd(',','`n')

# Append the closing brace
$tfvarsContent += @"
}
"@

# Write the tfvars content to the file
$tfvarsContent | Out-File -FilePath $outputFilePath -Encoding utf8