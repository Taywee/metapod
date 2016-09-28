id = 'V-38638'
severity = 'medium'
weight = 10.0
title = 'The graphical desktop environment must have automatic lock enabled.'
description = 'Enabling the activation of the screen lock after an idle period ensures password entry will be required in order to access the system, preventing access by passersby.'
fixtext = [=[Run the following command to activate locking of the screensaver in the GNOME desktop when it is activated: 

# gconftool-2 --direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type bool \
--set /apps/gnome-screensaver/lock_enabled true]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable. 

To check the status of the idle screen lock activation, run the following command: 

$ gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/lock_enabled

If properly configured, the output should be "true". 
If it is not, this is a finding.]=]

function test()
end

function fix()
end
