id = 'V-38546'
severity = 'medium'
weight = 10.0
title = 'The IPv6 protocol handler must not be bound to the network stack unless needed.'
description = 'Any unnecessary network stacks - including IPv6 - should be disabled, to reduce the vulnerability to exploitation.'
fixtext = [==[To prevent the IPv6 kernel module ("ipv6") from binding to the IPv6 networking stack, add the following line to "/etc/modprobe.d/disabled.conf" (or another file in "/etc/modprobe.d"): 

options ipv6 disable=1

This permits the IPv6 module to be loaded (and thus satisfy other modules that depend on it), while disabling support for the IPv6 protocol.   

Or add the following line to "/etc/sysctl.conf" to unhook the module:

net.ipv6.conf.all.disable_ipv6 = 1
]==]
checktext = [==[If the system uses IPv6, this is not applicable.

If the system is configured to disable the "ipv6" kernel module, it will contain a line of the form: 

options ipv6 disable=1

Such lines may be inside any file in "/etc/modprobe.d" or the deprecated "/etc/modprobe.conf". This permits insertion of the IPv6 kernel module (which other parts of the system expect to be present), but otherwise keeps it inactive. Run the following command to search for such lines in all files in "/etc/modprobe.d" and the deprecated "/etc/modprobe.conf": 

$ grep -r ipv6 /etc/modprobe.conf /etc/modprobe.d

If the IPv6 kernel module is not disabled, look to see if it is unhooked by inspecting the "sysctl.conf" file for the following output:

$ grep -r ipv6 /etc/sysctl.conf
net.ipv6.conf.all.disable_ipv6 = 1

If the IPv6 kernel module is not disabled or unhooked, this is a finding.]==]

function test()
end

function fix()
end
