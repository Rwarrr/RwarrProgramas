:main
@echo off
title PROYECTO DE RWARR
MODE con:cols=89 lines=28
Color 9F
test&cls
echo.
echo.     *******************************************************************************
echo.    *                                                                               *
echo.    *                                                                               *
echo.    *                 A C T I V A R   L A   O P T I M I Z A C I O N                 *
echo.    *                                                                               *
echo.    *                                                                               *
echo.    *********************************************************************************
echo.    *                                   OPCIONES                                    *
echo.    *********************************************************************************
echo.    *                                                                               *
echo.    * Presionar (1) Activar la optimizacion de Dota                                 *
echo.    * Presionar (2) Activar la optimizacion de Paladins                             *
echo.    * Presionar (3) Activar la optimizacion de blood strike                         *
echo.    * Presionar (4) Activar la optimizacion de Farling                              *
echo.    * Presionar (5) Activar la optimizacion de Fall Guys                            *
echo.    * Presionar (6) Activar la optimizacion de Stumble Guys                         *
echo.    * Presionar (7) Activar la optimizacion de Titanfall 2                          *
echo.    * Presionar (8) Instalar Spotify Mood                                           *
echo.    * Presionar (9) Prioridad de Transmitir Pantalla                                *
echo.    * Presionar (10)Activar la optimizacion de Minecraf                             *
echo.    * Presionar (11)Actualizar Spotify Mod                                          *
echo.    * Presionar (12)Activar la optimizacion de Gameloop                             *
echo.    * Presionar (0) Salir                                                           *
echo.    *                                                                               *
echo.     *******************************************************************************
SET /p choice= ^> Seleccione una opcion [1-0]:
IF /I "%choice%"=="1" GOTO op1
IF /I "%choice%"=="2" GOTO op2
IF /I "%choice%"=="3" GOTO op3
IF /I "%choice%"=="4" GOTO op4
IF /I "%choice%"=="5" GOTO op5
IF /I "%choice%"=="6" GOTO op6
IF /I "%choice%"=="7" GOTO op7
IF /I "%choice%"=="8" GOTO op8
IF /I "%choice%"=="9" GOTO op9
IF /I "%choice%"=="10" GOTO op10
IF /I "%choice%"=="11" GOTO op11
IF /I "%choice%"=="12" GOTO op12
IF /I "%choice%"=="0" GOTO Salir
echo OPCION INCORRECTA .
timeout /t 2 >nul
test&cls
goto main
test&cls
:op1
test&cls
	echo.
for /f "delims=" %%i in ('dir /S /B "D:\dota2.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\dota2.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="dota2.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Application Name" /t REG_SZ /d "dota2.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\dota2.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op2
test&cls	
for /f "delims=" %%i in ('dir /S /B "D:\Paladins.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Paladins.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="Paladins.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Application Name" /t REG_SZ /d "Paladins.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Paladins.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls 
:op3
test&cls
for /f "delims=" %%i in ('dir /S /B "D:\launcher.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\launcher.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="launcher.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Application Name" /t REG_SZ /d "launcher.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\launcher.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f

for /f "delims=" %%i in ('dir /S /B "D:\BloodStrike.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\BloodStrike.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="BloodStrike.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Application Name" /t REG_SZ /d "BloodStrike.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\BloodStrike.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f


for /f "delims=" %%i in ('dir /S /B "D:\render.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\render.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="render.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Application Name" /t REG_SZ /d "render.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\render.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f

for /f "delims=" %%i in ('dir /S /B "D:\webview_support_browser.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\webview_support_browser.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="webview_support_browser.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Application Name" /t REG_SZ /d "webview_support_browser.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\webview_support_browser.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op4
test&cls
for /f "delims=" %%i in ('dir /S /B "D:\SolarlandClient.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SolarlandClient.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="SolarlandClient.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Application Name" /t REG_SZ /d "SolarlandClient.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\SolarlandClient.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op5
test&cls
for /f "delims=" %%i in ('dir /S /B "D:\FallGuys_client_game.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FallGuys_client_game.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="FallGuys_client_game.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Application Name" /t REG_SZ /d "FallGuys_client_game.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client_game.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
for /f "delims=" %%i in ('dir /S /B "D:\FallGuysEACLauncher"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FallGuysEACLauncher\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="FallGuysEACLauncher" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Application Name" /t REG_SZ /d "FallGuysEACLauncher" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuysEACLauncher" /v "Throttle Rate" /t REG_SZ /d "-1" /f

for /f "delims=" %%i in ('dir /S /B "D:\FallGuys_client"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FallGuys_client\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="FallGuys_client" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Application Name" /t REG_SZ /d "FallGuys_client" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\FallGuys_client" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op6
for /f "delims=" %%i in ('dir /S /B "D:\Stumble Guys.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Stumble Guys.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="Stumble Guys.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Application Name" /t REG_SZ /d "Stumble Guys.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Stumble Guys.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op7
for /f "delims=" %%i in ('dir /S /B "D:\Titanfall2.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Titanfall2.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="Titanfall2.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Application Name" /t REG_SZ /d "Titanfall2.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
for /f "delims=" %%i in ('dir /S /B "D:\Titanfall2_trial.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Titanfall2_trial.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="Titanfall2_trial.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Application Name" /t REG_SZ /d "Titanfall2_trial.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Titanfall2_trial.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op8
test&cls
PowerShell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-cli/master/install.ps1 | iex"
PowerShell -Command "iwr -useb https://raw.githubusercontent.com/spicetify/spicetify-marketplace/main/resources/install.ps1 | iex"
test&cls
goto main
test&cls
:op9
test&cls
for /f "delims=" %%i in ('dir /S /B "C:\sndcpy.bat","C:\vlc.exe","C:\scrcpy-console.bat","C:\scrcpy-noconsole.vbs","C:\scrcpy.exe","C:\adb.exe",') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\sndcpy.bat\vlc.exe\scrcpy.exe\scrcpy-noconsole.vbs\scrcpy-console.bat\adb.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
wmic process where name="sndcpy.bat" CALL setpriority "256"
wmic process where name="scrcpy-console.bat" CALL setpriority "256"
wmic process where name="scrcpy-noconsole.vbs" CALL setpriority "256"
wmic process where name="scrcpy.exe" CALL setpriority "256"
wmic process where name="adb.exe" CALL setpriority "256"
wmic process where name="vlc.exe" CALL setpriority "256"
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Application Name" /t REG_SZ /d "sndcpy.bat" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\sndcpy.bat" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Application Name" /t REG_SZ /d "scrcpy-console.bat" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-console.bat" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Application Name" /t REG_SZ /d "scrcpy-noconsole.vbs" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy-noconsole.vbs" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Application Name" /t REG_SZ /d "scrcpy.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\scrcpy.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Application Name" /t REG_SZ /d "adb.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Application Name" /t REG_SZ /d "vlc.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\vlc.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main
test&cls
:op10
test&cls
for /f "delims=" %%i in ('dir /S /B "C:\javaw.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\javaw.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
for /f "delims=" %%i in ('dir /S /B "C:\jusched.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\jusched.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)
for /f "delims=" %%i in ('dir /S /B "C:\TLauncher.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\TLauncher.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)

wmic process where name="javaw.exe" CALL setpriority "256"
wmic process where name="jusched.exe" CALL setpriority "256"
wmic process where name="TLauncher.exe" CALL setpriority "256"
test&cls
goto main
test&cls
:op11
test&cls
PowerShell -Command "spicetify update"
test&cls
goto main
test&cls
:op12
test&cls
for /f "delims=" %%i in ('dir /S /B "C:\adb.exe","C:\AndroidEmulator.exe","C:\AndroidEmulatorEn.exe","C:\AndroidEmulatorEx.exe","C:\AndroidRenderer.exe","C:\aow_exe.exe","C:\AppMarket.exe","C:\cef_frame_render.exe","C:\cef_frame_demo.exe","C:\GameLogin.exe","C:\GameDownload.exe","C:\MGDetector.exe","C:\Market.exe","C:\QMEmulatorService.exe","C:\QQPCExternal.exe","C:\Rootfs.exe","C:\00Update.exe","C:\syzs_dl_svr.exe","C:\TP3Helper.exe","C:\TUpdate.exe","C:\TInst.exe","C:\TSettingCenter.exe","C:\TxGaDcc.exe","C:\ui.exe","C:\TxGaDcc.exe","C:\adb.exe","C:\QQExternal.exe","C:\inter.zip","C:\pcyyb_installer.exe","C:\Updater32.exe","C:\QQMiniGame.exe","C:\dxwebsetup.exe","C:\wmpf_installer.exe","C:\AndrowsInstaller.exe"') do (
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe\AndroidEmulatorEn.exe\AndroidEmulatorEx.exe\AndroidRenderer.exe\aow_exe.exe\AppMarket.exe\cef_frame_render.exe\cef_frame_demo.exe\GameLogin.exe\GameDownload.exe\MGDetector.exe\Market.exe\QMEmulatorService.exe\QQPCExternal.exe\Rootfs.exe\00Update.exe\00Update.exe\syzs_dl_svr.exe\TP3Helper.exe\TUpdate.exe\TInst.exe\TSettingCenter.exe\TxGaDcc.exe\ui.exe\TxGaDcc.exe\adb.exe\QQExternal.exe\pcyyb_installer.exe\Updater32.exe\QQMiniGame.exe\dxwebsetup.exe\wmpf_installer.exe\AndrowsInstaller.exe\PerfOptions" /v "CpuPriorityClass" /t REG_DWORD /d "6" /f
REG ADD "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" /t REG_SZ /d "GpuPreference=2;" /f
REG QUERY "HKCU\SOFTWARE\Microsoft\DirectX\UserGpuPreferences" /v "%%i" >nul
)

wmic process where name="inter.zip" CALL setpriority "256"
wmic process where name="pcyyb_installer.exe" CALL setpriority "256"
wmic process where name="Updater32.exe" CALL setpriority "256"
wmic process where name="QQMiniGame.exe" CALL setpriority "256"
wmic process where name="dxwebsetup.exe" CALL setpriority "256"
wmic process where name="wmpf_installer.exe" CALL setpriority "256"
wmic process where name="AndrowsInstaller.exe" CALL setpriority "256"
wmic process where name="adb.exe" CALL setpriority "256"
wmic process where name="AndroidEmulator.exe" CALL setpriority "256"
wmic process where name="AndroidEmulatorEn.exe" CALL setpriority "256"
wmic process where name="AndroidEmulatorEx.exe" CALL setpriority "256"
wmic process where name="AndroidRenderer.exe" CALL setpriority "256"
wmic process where name="aow_exe.exe" CALL setpriority "256"
wmic process where name="AppMarket.exe" CALL setpriority "256"
wmic process where name="cef_frame_render.exe" CALL setpriority "256"
wmic process where name="cef_frame_demo.exe" CALL setpriority "256"
wmic process where name="GameLogin.exe" CALL setpriority "256"
wmic process where name="GameDownload.exe" CALL setpriority "256"
wmic process where name="MGDetector.exe" CALL setpriority "256"
wmic process where name="Market.exe" CALL setpriority "256"
wmic process where name="QMEmulatorService.exe" CALL setpriority "256"
wmic process where name="QQPCExternal.exe" CALL setpriority "256"
wmic process where name="Rootfs.exe" CALL setpriority "256"
wmic process where name="00Update.exe" CALL setpriority "256"
wmic process where name="syzs_dl_svr.exe" CALL setpriority "256"
wmic process where name="TP3Helper.exe" CALL setpriority "256"
wmic process where name="TUpdate.exe" CALL setpriority "256"
wmic process where name="TInst.exe" CALL setpriority "256"
wmic process where name="TSettingCenter.exe" CALL setpriority "256"
wmic process where name="TxGaDcc.exe" CALL setpriority "256"
wmic process where name="ui.exe" CALL setpriority "256"
wmic process where name="TxGaDcc.exe" CALL setpriority "256"
wmic process where name="adb.exe" CALL setpriority "256"
wmic process where name="QQExternal.exe" CALL setpriority "256"

Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Application Name" /t REG_SZ /d "AndroidEmulator.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Application Name" /t REG_SZ /d "AndroidEmulator.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Application Name" /t REG_SZ /d "AndroidEmulator" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Application Name" /t REG_SZ /d "AndroidEmulator" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulator" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Application Name" /t REG_SZ /d "adb.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Application Name" /t REG_SZ /d "adb.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\adb.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Application Name" /t REG_SZ /d "AndroidEmulatorEn.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Application Name" /t REG_SZ /d "AndroidEmulatorEn.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEn.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Application Name" /t REG_SZ /d "AndroidEmulatorEx.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Application Name" /t REG_SZ /d "AndroidEmulatorEx.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidEmulatorEx.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Application Name" /t REG_SZ /d "AndroidRenderer.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Application Name" /t REG_SZ /d "AndroidRenderer.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AndroidRenderer.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Application Name" /t REG_SZ /d "aow_exe.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Application Name" /t REG_SZ /d "aow_exe.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\aow_exe.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Application Name" /t REG_SZ /d "AppMarket.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Application Name" /t REG_SZ /d "AppMarket.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\AppMarket.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Application Name" /t REG_SZ /d "cef_frame_render.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Application Name" /t REG_SZ /d "cef_frame_render.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_render.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Application Name" /t REG_SZ /d "cef_frame_demo.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Application Name" /t REG_SZ /d "cef_frame_demo.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\cef_frame_demo.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Application Name" /t REG_SZ /d "GameLogin.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Application Name" /t REG_SZ /d "GameLogin.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameLogin.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Application Name" /t REG_SZ /d "GameDownload.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Application Name" /t REG_SZ /d "GameDownload.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\GameDownload.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Application Name" /t REG_SZ /d "MGDetector.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Application Name" /t REG_SZ /d "MGDetector.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\MGDetector.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Application Name" /t REG_SZ /d "Market.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Application Name" /t REG_SZ /d "Market.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Market.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Application Name" /t REG_SZ /d "QMEmulatorService.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Application Name" /t REG_SZ /d "QMEmulatorService.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QMEmulatorService.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Application Name" /t REG_SZ /d "QQPCExternal.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Application Name" /t REG_SZ /d "QQPCExternal.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQPCExternal.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Application Name" /t REG_SZ /d "Rootfs.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Application Name" /t REG_SZ /d "Rootfs.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\Rootfs.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Application Name" /t REG_SZ /d "00Update.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Application Name" /t REG_SZ /d "00Update.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\00Update.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Application Name" /t REG_SZ /d "syzs_dl_svr.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Application Name" /t REG_SZ /d "syzs_dl_svr.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\syzs_dl_svr.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Application Name" /t REG_SZ /d "TxGaDcc.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Application Name" /t REG_SZ /d "TxGaDcc.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Application Name" /t REG_SZ /d "TP3Helper.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Application Name" /t REG_SZ /d "TP3Helper.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TP3Helper.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Application Name" /t REG_SZ /d "TUpdate.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Application Name" /t REG_SZ /d "TUpdate.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TUpdate.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Application Name" /t REG_SZ /d "TInst.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Application Name" /t REG_SZ /d "TInst.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TInst.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Application Name" /t REG_SZ /d "ui.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Application Name" /t REG_SZ /d "ui.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\ui.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Application Name" /t REG_SZ /d "TSettingCenter.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Application Name" /t REG_SZ /d "TSettingCenter.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TSettingCenter.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Application Name" /t REG_SZ /d "TxGaDcc.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Application Name" /t REG_SZ /d "TxGaDcc.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\TxGaDcc.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Application Name" /t REG_SZ /d "QQExternal.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Version" /t REG_SZ /d "1.0" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Application Name" /t REG_SZ /d "QQExternal.exe" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Protocol" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Local Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Local IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Local IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Remote Port" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Remote IP" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Remote IP Prefix Length" /t REG_SZ /d "*" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "DSCP Value" /t REG_SZ /d "46" /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\QoS\QQExternal.exe" /v "Throttle Rate" /t REG_SZ /d "-1" /f
test&cls
goto main

