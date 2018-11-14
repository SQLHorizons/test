$InformationPreference = "Continue"
##  Push-Location $(System.DefaultWorkingDirectory)

Write-Information $(Get-Location)

git version
git lfs version
git clone https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/testBuild.git --recurse-submodules release
