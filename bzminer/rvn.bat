@echo off
cd /d %~dp0

:: replace 0000 with your address

:: mine to ethermine
bzminer -a rvn -w 0000 -p stratum+ssl://stratum-ravencoin.flypool.org:3443 stratum+tcp://stratum-ravencoin.flypool.org:3333 stratum+tcp://stratum-ravencoin.flypool.org:13333 --nc 1

:: mine to 2miners
::bzminer -a rvn -w 0000 -p stratum+ssl://stratum-ravencoin.flypool.org:3443 stratum+tcp://us-rvn.2miners.com:6060 stratum+tcp://us-rvn.2miners.com:6161 --nc 1

pause