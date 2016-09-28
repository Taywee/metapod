id = 'V-38586'
severity = 'medium'
weight = 10.0
title = 'The system must require authentication upon booting into single-user and maintenance modes.'
description = 'This prevents attackers with physical access from trivially bypassing security on the machine and gaining root access. Such accesses are further prevented by configuring the bootloader password.'
fixtext = [==[Single-user mode is intended as a system recovery method, providing a single user root access to the system by providing a boot option at startup. By default, no authentication is performed if single-user mode is selected. 

To require entry of the root password even if the system is started in single-user mode, add or correct the following line in the file "/etc/sysconfig/init": 

SINGLE=/sbin/sulogin]==]
checktext = [==[To check if authentication is required for single-user mode, run the following command: 

$ grep SINGLE /etc/sysconfig/init

The output should be the following: 

SINGLE=/sbin/sulogin


If the output is different, this is a finding.]==]

function test()
end

function fix()
end
