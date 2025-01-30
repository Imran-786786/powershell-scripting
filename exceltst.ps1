#Install-Module -Name ImportExcel -Force -Scope CurrentUser -AllowClobber

# Define the path to the Excel file and the output tfvars file
$excelFilePath = ".\rg_details.xlsx"
#New-Item "." -Name "terraform.tfvars" -ItemType "File"
$outputFilePath = ".\rg_map.tfvars"

# Read the Excel file
$rgDetails = Import-Excel -Path $excelFilePath
#Write-Host $rgDetails
Write-Host "rg-map = {"
ForEach ($r in $rgDetails) {
   

Write-Host `"$($r.rg_name)`" = `"$($r.rg_location)`"
} 

"}"
