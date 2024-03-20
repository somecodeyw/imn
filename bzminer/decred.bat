@echo off
cd /d %~dp0

:: mine to node

:: Currently only solo mining is possible, and the mining address must be set in the nodes dcrd.conf file

:: username and password must match what you have in your node's dcrd.conf file
:: eg.
:: rpcuser=username
:: rpcpass=password
:: miningaddr=0000

:: on windows, the default location of dcrd.conf is:
:: C:\Users\username\AppData\Local\Dcrd

:: dcrd windows binaries can be found currently at:
:: https://github.com/decred/decred-binaries/releases
:: download and unpack decred-windows-amd64-v1.8.0.zip
:: launch dcrd.exe, the appdata folder will be created and a default dcrd.conf file will be created
:: modify the dcrd.conf file with above information (username, password, mining address) and relaunch dcrd.exe

:: MUST WAIT FOR NODE TO SYNC! (otherwise bz will just keep attempting to reconnect)

:: -w 0000 is just to make bz happy right now

bzminer -a decred -w 0000 -p https://127.0.0.1:9109 -r username --pool_password password --nc 1


pause