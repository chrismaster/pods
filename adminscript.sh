#!/bin/sh
# vi: ft=sh
mkdir -p ~/.local/bin
for adminfile in pCreateUser pDeleteUser pList pLogin pPrune pUpdateCheck
do
    (cd ~/.local/bin && curl -sSLO https://githubusercontent.com/chrismaster/pods/main/adminscripts/$adminfile && chmod 775 $adminfile)
done
