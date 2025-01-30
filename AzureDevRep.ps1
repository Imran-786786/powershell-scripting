New-item -path C:\GitRepos\Scripting\CreatingFolderAndFile -name "love" -type directory
New-item -path C:\GitRepos\Scripting\CreatingFolderAndFile\love -name "letter.txt" -type file
Set-Content -path C:\GitRepos\Scripting\CreatingFolderAndFile\love\letter.txt -value "Dear, I love you."