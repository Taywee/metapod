id = 'V-38629'
severity = 'medium'
weight = 10.0
title = 'The graphical desktop environment must set the idle timeout to no more than 15 minutes.'
description = 'Setting the idle delay controls when the screensaver will start, and can be combined with screen locking to prevent access from passersby.'
fixtext = [=[Run the following command to set the idle time-out value for inactivity in the GNOME desktop to 15 minutes: 

# gconftool-2 \
--direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type int \
--set /apps/gnome-screensaver/idle_delay 15]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable.

To check the current idle time-out value, run the following command: 

$ gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/idle_delay

If properly configured, the output should be "15". 

If it is not, this is a finding.]=]

function test()
end

function fix()
end
