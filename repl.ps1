<<<<<<< HEAD
param($fixFile,$fixOld,$fixNew)
$newcontent = (Get-Content -Path $fixFile) -replace $fixOld, $fixNew
=======
param($fixFile,$fixOld,$fixNew)
$newcontent = (Get-Content -Path $fixFile) -replace $fixOld, $fixNew
>>>>>>> 730b7aea23457cc0044f4ea70d3184b0fff4d3f6
$newcontent | Out-File $fixFile -Encoding utf8