New-Item -Path "." -Name "k8mod" -ItemType Directory
New-Item -Path "./k8mod" -Name "env" -ItemType Directory
New-Item -Path "./k8mod" -Name "modules" -ItemType Directory

New-Item -Path "./k8mod/env" -Name "dev" -ItemType Directory
New-Item -Path "./k8mod/env/dev" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/env/dev" -Name "provider.tf" -ItemType File
New-Item -Path "./k8mod/env/dev" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/env/dev" -Name "terraform.tfvars" -ItemType File

New-Item -Path "./k8mod/env" -Name "Testing" -ItemType Directory
New-Item -Path "./k8mod/env/Testing" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/env/Testing" -Name "provider.tf" -ItemType File
New-Item -Path "./k8mod/env/Testing" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/env/Testing" -Name "terraform.tfvars" -ItemType File

New-Item -Path "./k8mod/env" -Name "Prod" -ItemType Directory
New-Item -Path "./k8mod/env/Prod" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/env/Prod" -Name "provider.tf" -ItemType File
New-Item -Path "./k8mod/env/Prod" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/env/Prod" -Name "terraform.tfvars" -ItemType File

New-Item -Path "./k8mod/modules" -Name "rg" -ItemType Directory
New-Item -Path "./k8mod/modules/rg" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/modules/rg" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/modules/rg" -Name "output.tf" -ItemType File

New-Item -Path "./k8mod/modules" -Name "network" -ItemType Directory
New-Item -Path "./k8mod/modules/network" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/modules/network" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/modules/network" -Name "output.tf" -ItemType File

New-Item -Path "./k8mod/modules" -Name "storage" -ItemType Directory
New-Item -Path "./k8mod/modules/storage" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/modules/storage" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/modules/storage" -Name "output.tf" -ItemType File

New-Item -Path "./k8mod/modules" -Name "computing" -ItemType Directory
New-Item -Path "./k8mod/modules/computing" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/modules/computing" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/modules/computing" -Name "output.tf" -ItemType File

New-Item -Path "./k8mod/modules" -Name "kubernets" -ItemType Directory
New-Item -Path "./k8mod/modules/kubernets" -Name "main.tf" -ItemType File
New-Item -Path "./k8mod/modules/kubernets" -Name "variable.tf" -ItemType File
New-Item -Path "./k8mod/modules/kubernets" -Name "output.tf" -ItemType File