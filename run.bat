@echo off
title AIDA Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking configuration files...

(for %%F in (privateKeys proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy ethers web3
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy ethers web3
)
echo Dependencies installation completed!

echo Starting the bot...
node meomundep

pause
exit
