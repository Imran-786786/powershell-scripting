# PowerShell Scripts for Azure Resource Management

This repository contains a collection of PowerShell scripts designed to automate various tasks related to Azure resource management. These scripts cover functionalities ranging from generating Terraform configurations to reporting on storage accounts and virtual machine scanning.

## Scripts Overview

| Script Name                     | Description                                                                                                     |
|---------------------------------|-----------------------------------------------------------------------------------------------------------------|
| `AutoTerraformGenerate.ps1`      | Generates Terraform configuration files based on existing Azure resources or a defined template.                |
| `AzureDevRep.ps1`              | Likely generates a report or performs actions related to Azure DevOps (potentially deployments, pipelines, etc.). |
| `StorageAccountsReport.xlsx`      | (Note: This is an Excel file, not a script) Contains a pre-generated report on storage accounts.                 |
| `count.ps1`                     | A general utility script, possibly for counting specific resources or items within Azure.                      |
| `excel To Terraform.ps1`         | Converts data from an Excel spreadsheet into Terraform configuration code.                                     |
| `exceltst.ps1`                  | Another script likely related to Excel data processing, potentially for testing or manipulation.            |
| `rg_details.xlsx`               | (Note: This is an Excel file, not a script) Contains details about Resource Groups.                               |
| `storageAccountReport.ps1`        | Generates a detailed report on Azure Storage Accounts, potentially with different metrics than the Excel file.     |
| `terraform.tfvars`              | (Note: This is a Terraform variables file) Contains variables used in Terraform deployments.                   |
| `token.txt`                     | (Note: This file likely contains a token or key) Used for authentication with Azure or other services. HANDLE WITH CARE |
| `vmScanning.ps1`                | Performs scans on Virtual Machines, potentially for security vulnerabilities or compliance checks.                |

## Getting Started

### Prerequisites

- [PowerShell 7 or higher](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell?view=powershell-7.3)
- [Azure PowerShell Module](https://learn.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-9.5.0) installed and configured with appropriate credentials.
- (For scripts interacting with Excel) [ImportExcel Module](https://www.powershellgallery.com/modules/ImportExcel)

### Usage

1. Clone this repository to your local machine.
2. Navigate to the directory containing the scripts.
3. Open PowerShell and set the execution policy if necessary: `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`
4. Run the desired script using: `.\ScriptName.ps1` (replace `ScriptName.ps1` with the actual script name).
5. Refer to the script's help or comments for specific parameters and usage instructions: `Get-Help .\ScriptName.ps1 -Full`

## Important Notes

- **Security:** The `token.txt` file contains sensitive information. Ensure it is properly secured with appropriate file permissions and consider using more secure methods for handling credentials (e.g., Azure Key Vault).
- **Terraform:** Scripts that generate Terraform code require [Terraform CLI](https://www.terraform.io/downloads) to be installed separately.
- **Parameters:** Most scripts likely accept parameters to customize their behavior. Use `Get-Help` to view available parameters.
- **Error Handling:** The scripts should include robust error handling to manage unexpected situations and provide informative messages.

## Contributing

Contributions are welcome! Feel free to submit pull requests for bug fixes, improvements, or new scripts.

## License

(Choose an appropriate license, e.g., MIT License)
