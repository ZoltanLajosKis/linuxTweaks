#!/bin/sh

# curl https://raw.githubusercontent.com/ryanpcmcquen/linuxTweaks/master/restoreFluxbox.sh | bash

## uxterm
sed -i 's/^Mod1 F1 :Exec xterm/Mod1 F1 :Exec uxterm -rv -maximized' ~/.fluxbox/keys

## terminator (thinkpad reso)
#sed -i 's/^Mod1 F1 :Exec xterm/Mod1 F1 :Exec terminator --geometry 1100x700/g' ~/.fluxbox/keys


sed -i '17isuperkey-launch & \
' ~/.fluxbox/startup

sed -i '18inm-applet & \
' ~/.fluxbox/startup

sed -i '19ifbsetbg -l
' ~/.fluxbox/startup


#sed -i 's/^session.screen0.workspaceNames: Workspace 1,Workspace 2,Workspace 3,Workspace 4,/session.screen0.workspaceNames: 1,2,3,4,/g' ~/.fluxbox/init

echo "session.screen0.workspaceNames: 1,2,3,4," >> ~/.fluxbox/init

echo "session.screen0.toolbar.widthPercent: 50" >> ~/.fluxbox/init

