# Fetch all storage accounts using Azure CLI
$storageAccountsJson = az storage account list --query '[].{Name:name, Location:location, ResourceGroup:resourceGroup}' --output json

# Convert the JSON output to a PowerShell object
$storageAccounts = $storageAccountsJson | ConvertFrom-Json

# Create an array to store the data
$storageData = @()

# Process each storage account
foreach ($account in $storageAccounts) {
    $storageData += [PSCustomObject]@{
        "Storage Account Name" = $account.Name
        "Region"               = $account.Location
        "Resource Group"       = $account.ResourceGroup
    }
}

# Define the output file path
$outputFile = "StorageAccountsReport.xlsx"

# Export the data to an Excel sheet
$storageData | Export-Excel -Path $outputFile -AutoSize -Title "Azure Storage Accounts" -WorksheetName "Storage Accounts"

Write-Host "Report generated successfully: $outputFile"