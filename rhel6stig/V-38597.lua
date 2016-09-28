id = 'V-38597'
severity = 'medium'
weight = 10.0
title = 'The system must limit the ability of processes to have simultaneous write and execute access to memory.'
description = "ExecShield uses the segmentation feature on all x86 systems to prevent execution in memory higher than a certain address. It writes an address as a limit in the code segment descriptor, to control where code can be executed, on a per-process basis. When the kernel places a process's memory regions such as the stack and heap higher than this address, the hardware prevents execution in that address range."
fixtext = [==[To set the runtime status of the "kernel.exec-shield" kernel parameter, run the following command: 

# sysctl -w kernel.exec-shield=1

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

kernel.exec-shield = 1]==]
checktext = [=[The status of the "kernel.exec-shield" kernel parameter can be queried by running the following command: 

$ sysctl kernel.exec-shield
$ grep kernel.exec-shield /etc/sysctl.conf

The output of the command should indicate a value of "1". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf". 
If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
