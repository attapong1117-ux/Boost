# Auto-request Administrator privileges
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

# Fix Thai text encoding and window size
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
mode con cols=60 lines=7

do {
    Clear-Host
    Write-Host "=========================================================" -ForegroundColor Cyan
    Write-Host "              🚀 PS1.DLL | UNDERGROUND STORE             " -ForegroundColor Yellow
    Write-Host "=========================================================" -ForegroundColor Cyan
    Write-Host "1. ⚡ RUN (Execute All Tweaks)"
    Write-Host "2. 🧹 CLEAR HISTORY (Clear History & Exit)"
    Write-Host "=========================================================" -ForegroundColor Cyan
    
    $choice = Read-Host "👉 Please enter your choice (1 or 2)"
    
    switch ($choice) {
        '1' {
            Write-Host "`nExecuting your commands..." -ForegroundColor Yellow
            
            Reg.exe add "HKCU\Control Panel\Mouse" /v "ActiveWindowTracking" /t REG_DWORD /d "4096" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep" /t REG_SZ /d "No" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight" /t REG_SZ /d "2" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed" /t REG_SZ /d "450" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth" /t REG_SZ /d "3" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "ExtendedSounds" /t REG_SZ /d "No" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverHeight" /t REG_SZ /d "3" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverTime" /t REG_SZ /d "30" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseHoverWidth" /t REG_SZ /d "4" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity" /t REG_SZ /d "10" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "6" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "10" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseTrails" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "SnapToDefaultButton" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "SwapMouseButtons" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Mouse Smooth" /t REG_SZ /d "1100" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Speed Fast" /t REG_SZ /d "1000" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "FlashClick" /t REG_SZ /d "1000" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "FlashClick2" /t REG_SZ /d "700" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Delay" /t REG_SZ /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Delay2" /t REG_SZ /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseXCurve" /t REG_BINARY /d "00310000000000000090300000000000000099300000000000000000301900000000009200150000" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "SmoothMouseYCurve" /t REG_BINARY /d "0000000000000000000038000000000000007000000000000000a800000000000000e00000000000" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /ve /t REG_SZ /d "" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "TcpWindowSize" /t REG_DWORD /d "372300" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "TCPDelAckTicks" /t REG_DWORD /d "3" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Tcp1323Opts" /t REG_DWORD /d "4" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "TcpMaxDataRetransmissions" /t REG_DWORD /d "4" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "SackOpts" /t REG_DWORD /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DefaultTTL" /t REG_DWORD /d "32767" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep2" /t REG_SZ /d "No" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "EnablePMTUDiscovery" /t REG_DWORD /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "EnablePMTUBHDetect" /t REG_DWORD /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickHeight2" /t REG_SZ /d "0.5" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed2" /t REG_SZ /d "0,47" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickWidth2" /t REG_SZ /d "0.5" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "ExtendedSounds2" /t REG_SZ /d "No" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensibility2" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed2" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold12" /t REG_SZ /d "3" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold22" /t REG_SZ /d "4" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "Beep3" /t REG_SZ /d "No" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity2" /t REG_SZ /d "0.01" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseTrails1" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseTrails2" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSensitivity3" /t REG_SZ /d "0.01" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickSpeed3" /t REG_SZ /d "0.10" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "TcpNoDelay2" /t REG_DWORD /d "5247" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DoubleClickDelay" /t REG_DWORD /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "LeftClick" /t REG_SZ /d "3" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DelayLeftClick" /t REG_DWORD /d "30" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetMouseDragOutWidth" /t REG_SZ /d "20" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetMouseSideMoveWidth" /t REG_SZ /d "50" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetMouseWidth" /t REG_SZ /d "1" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetPenDragOutWidth" /t REG_SZ /d "30" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetPenSideMoveWidth" /t REG_SZ /d "50" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DockTargetPenWidth" /t REG_SZ /d "30" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "TcpAckFrequency" /t REG_DWORD /d "12" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "TcpNoDelay1" /t REG_BINARY /d "7f14000000000000" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "DelayRigthClick" /t REG_BINARY /d "" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseAcceleration" /t REG_DWORD /d "0" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "NetworkThrottlingIndex" /t REG_DWORD /d "4294967295" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile" /v "SystemResponsiveness" /t REG_DWORD /d "0" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Affinity" /t REG_DWORD /d "0" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Background Only" /t REG_SZ /d "False" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Clock Rate" /t REG_DWORD /d "10000" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "GPU Priority" /t REG_DWORD /d "8" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Priority" /t REG_DWORD /d "6" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "Scheduling Category" /t REG_SZ /d "High" /f
            Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Multimedia\SystemProfile\Tasks\Games" /v "SFIO Priority" /t REG_SZ /d "High" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseSpeed" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold1" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Mouse" /v "MouseThreshold2" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\System\GameConfigStore" /v "GameDVR_Enabled" /t REG_DWORD /d "0" /f
            Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v "AllowGameDVR" /t REG_DWORD /d "0" /f
            Reg.exe add "HKCU\Control Panel\Keyboard" /v "InitialKeyboardIndicators" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardDelay" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Keyboard" /v "KeyboardSpeed" /t REG_SZ /d "31" /f
            Reg.exe add "HKCU\Control Panel\Keyboard" /v "lnitialKeyboardlndicators" /t REG_SZ /d "0" /f
            Reg.exe add "HKCU\Control Panel\Keyboard" /v "PrintScreenKeyForSnippingEnabled" /t REG_DWORD /d "0" /f
            Reg.exe add "HKCU\Control Panel\Keyboard" /v "PrintScreenKeyForSnippingTool" /t REG_DWORD /d "0" /f
            
            Write-Host "`n🎉 All commands executed successfully!" -ForegroundColor Green
            cmd.exe /c pause
        }
        '2' {
            Write-Host "`nกำลังลบประวัติ..." -ForegroundColor Yellow
            
            # ลบประวัติในหน้าต่างปัจจุบัน
            Clear-History
            
            # ลบไฟล์ประวัติที่ Windows บันทึกไว้
            $historyPath = (Get-PSReadLineOption).HistorySavePath
            if ($historyPath -and (Test-Path $historyPath)) {
                Remove-Item -Path $historyPath -Force -ErrorAction SilentlyContinue
            }
            
            Write-Host "`n✅ History cleared successfully!" -ForegroundColor Green
            cmd.exe /c pause
            exit
        }'2' {
            Write-Host "`nกำลังลบประวัติ..." -ForegroundColor Yellow
            
            # ลบประวัติในหน้าต่างปัจจุบัน
            Clear-History
            
            # ลบไฟล์ประวัติที่ Windows บันทึกไว้
            $historyPath = (Get-PSReadLineOption).HistorySavePath
            if ($historyPath -and (Test-Path $historyPath)) {
                Remove-Item -Path $historyPath -Force -ErrorAction SilentlyContinue
            }
            
            Write-Host "`n✅ History cleared successfully!" -ForegroundColor Green
            cmd.exe /c pause
            exit
        }
    }
} while ($choice -ne '2')
