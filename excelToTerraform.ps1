#Install-Module -Name ImportExcel -Force -Scope CurrentUser -AllowClobber

# Define the path to the Excel file and the output tfvars file
$excelFilePath = ".\rg_details.xlsx"
New-Item "." -Name "terraform.tfvars" -ItemType "File"
#$outputFilePath = ".\rg_map.tfvars"

# Read the Excel file
$rgDetails = Import-Excel -Path $excelFilePath
#Write-Host $rgDetails
Add-Content ".\terraform.tfvars" "rg-map = {"
    ForEach ($r in $rgDetails) {

    Add-Content ".\terraform.tfvars" "$($r.rg_name) = `"$($r.rg_location)`""
} 

Add-Content ".\terraform.tfvars" "}"
