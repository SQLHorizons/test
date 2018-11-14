```yaml

##  reference.build-ci pipeline

name: reference.build-ci
trigger:
- master

queue:
  name: Hosted VS2017
steps:
- powershell: |
    ##  $InformationPreference = "Continue"
    ##  Push-Location $(System.DefaultWorkingDirectory)

    ##  if(Test-Path ./release) {
    ##    Remove-Item ./release -Force -Recurse
    ##  }
    ##  $null = New-Item -ItemType directory -Path ./release -Force

    ##  git version
    ##  git lfs version
    ##  git init ./release
    ##  Push-Location ./release
    ##  Write-Information $(Get-Location)
    ##  git remote add origin https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/.testBuild
    ##  git config gc.auto 0
    ##  git config --get-all http.https://github.com/SQLHorizons/.testBuild.extraheader
    ##  git config --get-all http.proxy

    ##  git -c http.extraheader="AUTHORIZATION: basic ***" fetch --tags --prune --progress --no-recurse-submodules origin
    ##  git clone https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/testBuild.git --recurse-submodules release

    ##  git clone https://SQLHorizons:$($env:GITHUB_TOKEN)@github.com/SQLHorizons/functions.git

    Write-Information "ALL  DONE"

  workingDirectory: '$(System.DefaultWorkingDirectory)'

  displayName: 'release'
  env:
    GITHUB_TOKEN: $(GITHUB_TOKEN)
    BRANCH: $(BRANCH)


```