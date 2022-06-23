
$minutes = Read-Host -Prompt 'Input the runtime in minutes'

$minutes = [int]$minutes

$myshell = New-Object -com "WScript.Shell"
Write-Host "Starting Script for $minutes minutes:"

for ($i = 0; $i -lt $minutes; $i++) {
	Clear-Host
	Write-Host "Starting Script for $minutes minutes:"
	$time = Get-Date -Format "HH:mm:ss"
	$timeLeft = $minutes - $i
	Write-Host "$time - Toggle NUMLOCK - $timeLeft ($i minutes Passed)"
	Start-Sleep -s 60
	$myshell.sendkeys('{NUMLOCK}')
	$myshell.sendkeys('{NUMLOCK}')   
}
   
Write-Host "Done wiggling, goodbye!"
Exit

