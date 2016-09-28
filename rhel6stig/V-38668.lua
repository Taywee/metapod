id = 'V-38668'
severity = 'high'
weight = 10.0
title = 'The x86 Ctrl-Alt-Delete key sequence must be disabled.'
description = 'A locally logged-in user who presses Ctrl-Alt-Delete, when at the console, can reboot the system. If accidentally pressed, as could happen in the case of mixed OS environment, this can create the risk of short-term loss of availability of systems due to unintentional reboot. In the GNOME graphical environment, risk of unintentional reboot from the Ctrl-Alt-Delete sequence is reduced because the user will be prompted before any action is taken.'
fixtext = [=[By default, the system includes the following line in "/etc/init/control-alt-delete.conf" to reboot the system when the Ctrl-Alt-Delete key sequence is pressed:

exec /sbin/shutdown -r now "Ctrl-Alt-Delete pressed"


To configure the system to log a message instead of rebooting the system, add the following line to "/etc/init/control-alt-delete.override" to read as follows:

exec /usr/bin/logger -p security.info "Ctrl-Alt-Delete pressed"]=]
checktext = [=[To ensure the system is configured to log a message instead of rebooting the system when Ctrl-Alt-Delete is pressed, ensure the following line is in "/etc/init/control-alt-delete.override":

exec /usr/bin/logger -p security.info "Ctrl-Alt-Delete pressed"

If the system is not configured to block the shutdown command when Ctrl-Alt-Delete is pressed, this is a finding.]=]

function test()
end

function fix()
end
