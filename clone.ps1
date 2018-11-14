$InformationPreference = "Continue"
Push-Location $(System.DefaultWorkingDirectory)

git version
git lfs version
git clone https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/testBuild.git --recurse-submodules release
