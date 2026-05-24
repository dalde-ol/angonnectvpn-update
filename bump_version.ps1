param (
    [Parameter(Mandatory = $true)]
    [string]$Version
)

$repoPath = "C:\Users\dalso\Downloads\angonnectvpn-update"
Set-Location $repoPath

"{ ""min_version"": ""$Version"" }" | Out-File -FilePath version.json -Encoding utf8

git add version.json
git commit -m "bump min_version to $Version"
git push origin main

Write-Host ""
Write-Host "min_version actualizado para $Version" -ForegroundColor Green
