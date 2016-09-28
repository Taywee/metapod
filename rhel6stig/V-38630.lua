id = 'V-38630'
severity = 'medium'
weight = 10.0
title = 'The graphical desktop environment must automatically lock after 15 minutes of inactivity and the system must require user reauthentication to unlock the environment.'
description = 'Enabling idle activation of the screen saver ensures the screensaver will be activated after the idle delay. Applications requiring continuous, real-time screen display (such as network management products) require the login session does not have administrator rights and the display station is located in a controlled-access area.'
fixtext = [=[Run the following command to activate the screensaver in the GNOME desktop after a period of inactivity: 

# gconftool-2 --direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type bool \
--set /apps/gnome-screensaver/idle_activation_enabled true]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable.

To check the screensaver mandatory use status, run the following command: 

$ gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_activation_enabled

If properly configured, the output should be "true". 

If it is not, this is a finding.]=]

function test()
end

function fix()
end
