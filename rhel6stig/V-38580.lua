id = 'V-38580'
severity = 'medium'
weight = 10.0
title = 'The audit system must be configured to audit the loading and unloading of dynamic kernel modules.'
description = 'The addition/removal of kernel modules can be used to alter the behavior of the kernel and potentially introduce malicious code into kernel space. It is important to have an audit trail of modules that have been introduced into the kernel.'
fixtext = [==[Add the following to "/etc/audit/audit.rules" in order to capture kernel module loading and unloading events, setting ARCH to either b32 or b64 as appropriate for your system: 

-w /sbin/insmod -p x -k modules
-w /sbin/rmmod -p x -k modules
-w /sbin/modprobe -p x -k modules
-a always,exit -F arch=[ARCH] -S init_module -S delete_module -k modules]==]
checktext = [==[To determine if the system is configured to audit execution of module management programs, run the following commands:

$ sudo egrep -e "(-w |-F path=)/sbin/insmod" /etc/audit/audit.rules
$ sudo egrep -e "(-w |-F path=)/sbin/rmmod" /etc/audit/audit.rules
$ sudo egrep -e "(-w |-F path=)/sbin/modprobe" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line.

To determine if the system is configured to audit calls to the "init_module" system call, run the following command:

$ sudo grep -w "init_module" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. 

To determine if the system is configured to audit calls to the "delete_module" system call, run the following command:

$ sudo grep -w "delete_module" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. 

If no line is returned for any of these commands, this is a finding.]==]

function test()
end

function fix()
end
