@echo off
title FiveM Cleaner By Mhatt.zzz#0001 (he want credit for his cleaner)
cls
powershell -Command "& {Get-AppxPackage -AllUsers xbox | Remove-AppxPackage}"
sc stop XblAuthManager
sc stop XblGameSave
sc stop XboxNetApiSvc
sc stop XboxGipSvc
sc delete XblAuthManager
sc delete XblGameSave
sc delete XboxNetApiSvc
sc delete XboxGipSvc
del /q %systemdrive%\Users\%username%\AppData\Local\DigitalEntitlements
del /q %systemdrive%:\Users\%username%\AppData\Roaming\CitizenFX
del /q D:\Users\%username%\AppData\Local\DigitalEntitlements
del /q D:\Users\%username%\AppData\Roaming\CitizenFX
del /q F:\Users\%username%\AppData\Local\DigitalEntitlements
del /q F:\Users\%username%\AppData\Roaming\CitizenFX
del /q E:\Users\%username%\AppData\Local\DigitalEntitlements
del /q E:\Users\%username%\AppData\Roaming\CitizenFX
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\xbgm" /f
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTask" /disable
schtasks /Change /TN "Microsoft\XblGameSave\XblGameSaveTaskLogon" /disableL
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\GameDVR" /v AllowGameDVR /t REG_DWORD /d 0 /f
set hostspath=%windir%\System32\drivers\etc\hosts
echo 127.0.0.1 xboxlive.com >> %hostspath%
echo 127.0.0.1 user.auth.xboxlive.com >> %hostspath%
echo 127.0.0.1 presence-heartbeat.xboxlive.com >> %hostspath%
rd %userprofile%\AppData\Local\DigitalEntitlements /q /s
cls
echo.
echo Press any key to continue.
pause>nul