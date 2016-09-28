id = 'V-38474'
severity = 'low'
weight = 10.0
title = 'The system must allow locking of graphical desktop sessions.'
description = 'The ability to lock graphical desktop sessions manually allows users to easily secure their accounts should they need to depart from their workstations temporarily.'
fixtext = [=[Run the following command to set the Gnome desktop keybinding for locking the screen:

# gconftool-2
--direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type string \
--set /apps/gnome_settings_daemon/keybindings/screensaver "<Control><Alt>l"

Another keyboard sequence may be substituted for "<Control><Alt>l", which is the default for the Gnome desktop.]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable.

Verify the keybindings for the Gnome screensaver:

# gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gnome_settings_daemon/keybindings/screensaver

If no output is visible, this is a finding.]=]

function test()
end

function fix()
end
