id = 'V-38517'
severity = 'medium'
weight = 10.0
title = 'The Transparent Inter-Process Communication (TIPC) protocol must be disabled unless required.'
description = 'Disabling TIPC protects the system against exploitation of any flaws in its implementation.'
fixtext = [=[The Transparent Inter-Process Communication (TIPC) protocol is designed to provide communications between nodes in a cluster. To configure the system to prevent the "tipc" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": 

install tipc /bin/true]=]
checktext = [=[If the system is configured to prevent the loading of the "tipc" kernel module, it will contain lines inside any file in "/etc/modprobe.d" or the deprecated"/etc/modprobe.conf". These lines instruct the module loading system to run another program (such as "/bin/true") upon a module "install" event. Run the following command to search for such lines in all files in "/etc/modprobe.d" and the deprecated "/etc/modprobe.conf": 

$ grep -r tipc /etc/modprobe.conf /etc/modprobe.d

If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
