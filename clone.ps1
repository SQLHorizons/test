$InformationPreference = "Continue"
##  Push-Location $(System.DefaultWorkingDirectory)

Write-Information $(Get-Location)

$env:GITHUB_TOKEN = "c5e75a5fa45b19ef77ccf53d8735ea5054b4e86c"

git version
git lfs version
git clone https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/testBuild.git --recurse-submodules release

Remove-Item ./release -Force -Recurse
