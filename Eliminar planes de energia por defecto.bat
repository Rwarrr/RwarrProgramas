��&cls
@echo off
color c
echo Bat by JamessJ
powercfg -h off
powercfg -delete 381b4222-f694-41f0-9685-ff5bb260df2e
powercfg -delete 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c
powercfg -delete a1841308-3541-4fab-bc81-f71556f20b4a
powercfg -delete 084bfa62-19b0-4740-a5c3-8ae2d77f482d
powercfg -delete 9baa52b4-2177-4eca-a597-d8da2a18b128
powercfg -delete 9cd461bb-969b-4ba8-9ac6-f81ac0acac13
powercfg -delete acc444b7-1fe3-480d-bd1c-9353fc1ed707
powercfg -delete e9a42b02-d5df-448d-aa00-03f14749eb61
Reg.exe add "HKCR\.pow" /ve /t REG_SZ /d "Power Plan" /f
Reg.exe add "HKCR\.pow" /v "FriendlyTypeName" /t REG_SZ /d "Power Plan" /f
Reg.exe add "HKCR\.pow\DefaultIcon" /ve /t REG_EXPAND_SZ /d "%%SystemRoot%%\System32\powercfg.cpl,-202" /f
Reg.exe add "HKCR\.pow\shell\Import\command" /ve /t REG_SZ /d "powercfg /import \"%%1\"" /f
Start https://twitter.com/JamessJ0_