@echo off
:diocane
title -=[HWID Checker sylent#7915]=-
echo Bios
echo 
wmic bios get serialnumber
wmic csproduct get uuid
echo CPU
echo 
wmic cpu get serialnumber
wmic cpu get processorid
echo Diskdrive
echo 
wmic diskdrive get serialnumber
echo Baseboard
echo 
wmic baseboard get serialnumber
echo Ram
echo 
wmic memorychip get serialnumber
echo MacAddress
echo 
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo GPU
echo 
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo.
echo Press any key to continue.
pause>nul