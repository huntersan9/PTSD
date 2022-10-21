$session = New-CimSession
$serialnumber = (Get-CimInstance -CimSession $session -Class Win32_BIOS).SerialNumber
Write-Output "Serial# = $serialnumber"
$myPath = $MyInvocation.MyCommand.Path | Split-Path
.\Scripts\Get-WindowsAutoPilotInfo.ps1 -Outputfile "$myPath$serialnumber.csv"

mdmdiagnosticstool.exe -area "Autopilot;TPM" -cab "$myPath$serialnumber.cab" | Tee-Object -FilePath "$myPath$serialnumber.cab.log"
