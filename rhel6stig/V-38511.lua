id = 'V-38511'
severity = 'medium'
weight = 10.0
title = 'IP forwarding for IPv4 must not be enabled, unless the system is a router.'
description = 'IP forwarding permits the kernel to forward packets from one network interface to another. The ability to forward packets between two networks is only appropriate for systems acting as routers.'
fixtext = [==[To set the runtime status of the "net.ipv4.ip_forward" kernel parameter, run the following command: 

# sysctl -w net.ipv4.ip_forward=0

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.ip_forward = 0]==]
checktext = [=[The status of the "net.ipv4.ip_forward" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.ip_forward

The output of the command should indicate a value of "0". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.ip_forward /etc/sysctl.conf

The ability to forward packets is only appropriate for routers. If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
