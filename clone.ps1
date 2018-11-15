param(
    [Parameter(Mandatory = $false)]
    [ValidateNotNullOrEmpty()]
    [System.String]
    $GITHUB_TOKEN
)

$InformationPreference = "Continue"
##  Push-Location $(System.DefaultWorkingDirectory)

Write-Information $(Get-Location)

$env:GITHUB_TOKEN = $GITHUB_TOKEN

git version
git lfs version
git clone https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/testBuild.git --recurse-submodules release

Remove-Item ./release -Force -Recurse
