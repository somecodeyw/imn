@echo off
cd /d %~dp0

:: replace kaspa:0000 with your wallet address
:: NOTE: address needs to start with "karlsen:"

:: herominers
bzminer -a karlsen -w nexellia:qqrrnvetsr2m25efy95x4cxmqtkemc93nustamu4pkzc8y4kqywu7x5dc58lc.d1 -p stratum+tcp://us2.nexellia.herominers.com:1143 --nc 1

:: mine to woolypooly
::bzminer -a karlsen -w karlsen:0000 -p stratum+tcp://pool.us.woolypooly.com:3132 --nc 1

:: mine to node
::bzminer -a karlsen -w karlsen:0000 -p solo+tcp://127.0.0.1:42110 --nc 1

pause