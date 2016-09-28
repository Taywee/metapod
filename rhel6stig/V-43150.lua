id = 'V-43150'
severity = 'medium'
weight = 10.0
title = 'The login user list must be disabled.'
description = 'Leaving the user list enabled is a security risk since it allows anyone with physical access to the system to quickly enumerate known user accounts without logging in.'
fixtext = [=[In the default graphical environment, users logging directly into the system are greeted with a login screen that displays all known users. This functionality should be disabled.

Run the following command to disable the user list:

$ sudo gconftool-2 --direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type bool --set /apps/gdm/simple-greeter/disable_user_list true]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable.

To ensure the user list is disabled, run the following command:

$ gconftool-2 --direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--get /apps/gdm/simple-greeter/disable_user_list

The output should be "true". If it is not, this is a finding.]=]

function test()
end

function fix()
end
