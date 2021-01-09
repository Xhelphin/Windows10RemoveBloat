#Requires -RunAsAdministrator
Set-ExecutionPolicy Unrestricted -Force
$location = Get-Location
$output = -join($location,"\script.ps1")
$blacklist = -join($location, "\custom-lists.ps1")
Invoke-WebRequest -Uri "https://raw.githubusercontent.com/Sycnex/Windows10Debloater/master/Windows10DebloaterGUI.ps1" -OutFile $output
Invoke-WebRequest -Uri "https://gist.githubusercontent.com/Xhelphin/95ebff0f5b87b7084c218689db401bc0/raw/26a8f3fef76c393c444465915f0c7b8ea0f694e2/custom-lists.ps1" -OutFile $blacklist
./script.ps1
Remove-Item ./custom-lists.ps1
Remove-Item ./script.ps1
Set-ExecutionPolicy RemoteSigned -Force