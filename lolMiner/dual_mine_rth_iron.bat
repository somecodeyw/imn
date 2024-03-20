@echo off

setlocal enableDelayedExpansion

Rem #################################
Rem ## Begin of user-editable part ##
Rem #################################

set "POOL=fr.vipor.net:5070"
set "WALLET=0x155da78b788ab54bea1340c10a5422a8ae88142f.lolMinerWorker"

set "IRONPOOL=de.ironfish.herominers.com:1145"
set "IRONWALLET=406c14bac8709d75045c175bee21a13216107fcb6d5be66e5580a3a1d3a80035.lolMinerWorker"
							
set "EXTRAPARAMETERS=--apiport 8020"

Rem #################################
Rem ##  End of user-editable part  ##
Rem #################################

cd /d %~dp0

set MyVariable=%CD%\lolMiner.exe

:WindowsVer
echo "Running lolMiner from %MyVariable%"
for /f "tokens=4-5 delims=. " %%i in ('ver') do set VERSION=%%i.%%j
if "%version%" == "10.0" goto W10
goto OtherW

:W10
"%MyVariable%" --algo ETHASHB3 --pool !POOL! --user !WALLET! --dualmode FISHDUAL --dualpool !IRONPOOL! --dualuser !IRONWALLET! !EXTRAPARAMETERS! --watchdog exit
timeout 10
goto W10
goto END

:OtherW
"%MyVariable%" --algo ETHASHB3 --pool !POOL! --user !WALLET! --dualmode FISHDUAL --dualpool !IRONPOOL! --dualuser !IRONWALLET! !EXTRAPARAMETERS! --watchdog exit --nocolor
timeout 10
goto OtherW

:END
pause
