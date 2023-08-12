# Prompt user to input folder name
$folderName = Read-Host "Enter the name of the folder:"

# Create the folder
New-Item -ItemType Directory -Path $folderName

# Get current date and time
$currentDateTime = Get-Date -Format "dd.MM.yyyy-HH.mm"

# Create empty text file with current date and time as title
$file = "$folderName\$currentDateTime.txt"
New-Item -ItemType File -Path $file

# Write current name of folder in file
$folderName | Out-File $file
