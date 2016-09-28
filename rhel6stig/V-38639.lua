id = 'V-38639'
severity = 'low'
weight = 10.0
title = 'The system must display a publicly-viewable pattern during a graphical desktop environment session lock.'
description = 'Setting the screensaver mode to blank-only conceals the contents of the display from passersby.'
fixtext = [=[Run the following command to set the screensaver mode in the GNOME desktop to a blank screen: 

# gconftool-2 \
--direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type string \
--set /apps/gnome-screensaver/mode blank-only]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable. 

To ensure the screensaver is configured to be blank, run the following command: 

$ gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome-screensaver/mode

If properly configured, the output should be "blank-only". 
If it is not, this is a finding.]=]

function test()
end

function fix()
end
