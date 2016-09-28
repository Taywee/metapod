id = 'V-38688'
severity = 'medium'
weight = 10.0
title = 'A login banner must be displayed immediately prior to, or as part of, graphical desktop environment login prompts.'
description = 'An appropriate warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers.'
fixtext = [=[To enable displaying a login warning banner in the GNOME Display Manager's login screen, run the following command: 

# gconftool-2 --direct \
--config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory \
--type bool \
--set /apps/gdm/simple-greeter/banner_message_enable true

To display a banner, this setting must be enabled and then banner text must also be set.]=]
checktext = [=[If the GConf2 package is not installed, this is not applicable.

To ensure a login warning banner is enabled, run the following: 

$ gconftool-2 --direct --config-source xml:readwrite:/etc/gconf/gconf.xml.mandatory --get /apps/gdm/simple-greeter/banner_message_enable

Search for the "banner_message_enable" schema. If properly configured, the "default" value should be "true". 
If it is not, this is a finding.]=]

function test()
end

function fix()
end
