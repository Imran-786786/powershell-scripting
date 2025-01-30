$folders = @(
    "k8mod/env/dev",
    "k8mod/env/Testing",
    "k8mod/env/Prod",
    "k8mod/modules/rg",
    "k8mod/modules/network",
    "k8mod/modules/storage",
    "k8mod/modules/computing",
    "k8mod/modules/kubernets"
)

$files = @(
    "main.tf",
    "provider.tf",
    "variable.tf",
    "terraform.tfvars"
)

$moduleFiles = @(
    "main.tf",
    "variable.tf",
    "output.tf"
)

# Create directories
foreach ($folder in $folders) {
    New-Item -Path "./$folder" -ItemType Directory -Force
}

# Create files in env directories
foreach ($env in "dev", "Testing", "Prod") {
    foreach ($file in $files) {
        New-Item -Path "./k8mod/env/$env/$file" -ItemType File -Force
    }
}

# Create files in module directories
foreach ($module in "rg", "network", "storage", "computing", "kubernets") {
    foreach ($file in $moduleFiles) {
        New-Item -Path "./k8mod/modules/$module/$file" -ItemType File -Force
    }
}