param($fixFile,$fixOld,$fixNew)
$newcontent = (Get-Content -Path $fixFile) -replace $fixOld, $fixNew
$newcontent | Out-File $fixFile -Encoding utf8