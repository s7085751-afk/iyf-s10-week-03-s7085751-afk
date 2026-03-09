param($ProjectName)



if (-not $ProjectName) {

Write-Host "Usage: .\new-project.ps1 project-name"

exit 1

}



# Create folders

New-Item -ItemType Directory -Path "$ProjectName\src\css" -Force

New-Item -ItemType Directory -Path "$ProjectName\src\js" -Force

New-Item -ItemType Directory -Path "$ProjectName\src\images" -Force

New-Item -ItemType Directory -Path "$ProjectName\docs" -Force

New-Item -ItemType Directory -Path "$ProjectName\tests" -Force



# Create files

New-Item -ItemType File -Path "$ProjectName\README.md" -Force

New-Item -ItemType File -Path "$ProjectName\src\index.html" -Force

New-Item -ItemType File -Path "$ProjectName\src\css\styles.css" -Force

New-Item -ItemType File -Path "$ProjectName\src\js\main.js" -Force



# Add title to README

Set-Content -Path "$ProjectName\README.md" -Value "# $ProjectName"



Write-Host "Project $ProjectName created successfully!"

```

