Write-Progress -Activity "Uninstalling Progress" -Status "Start Uninstalling" -Id 2 -ParentId 1 -PercentComplete 1
$counts = 1..50
$progress = 1
foreach ($process in $counts) {
    Write-Progress -Activity "Uninstalling Progress" -Status "Uninstalling." -Id 2 -ParentId 1 -PercentComplete ($progress/$counts.count*100)
    Start-Sleep -Milliseconds 20
	Write-Progress -Activity "Uninstalling Progress" -Status "Uninstalling.." -Id 2 -ParentId 1 -PercentComplete ($progress/$counts.count*100)
	Start-Sleep -Milliseconds 20
	Write-Progress -Activity "Uninstalling Progress" -Status "Uninstalling..." -Id 2 -ParentId 1 -PercentComplete ($progress/$counts.count*100)
	Start-Sleep -Milliseconds 20
    $progress++
}
Write-Progress -Activity "Uninstalling Progress" -Status "Uninstalled" -Id 2 -ParentId 1 -Completed