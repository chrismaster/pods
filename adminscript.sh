#!/bin/sh
# vi: ft=sh
mkdir -p ~/.local/bin
for adminfile in pCreateUser pDeleteUser pList pLogin pPrune pUpdateCheck pUpdateAll
do
    (cd ~/.local/bin && curl -sSLO https://raw.githubusercontent.com/chrismaster/pods/main/adminscripts/$adminfile && chmod 775 $adminfile)
done

for userfile in pBuild pContainer pContainerNetwork pExec pLog pPod pRestart pStatus pStop pUpdate
do
    (cd /usr/local/bin && sudo curl -sSLO https://raw.githubusercontent.com/chrismaster/pods/main/userscripts/$userfile && sudo chmod 775 $userfile)
done
