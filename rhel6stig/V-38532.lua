id = 'V-38532'
severity = 'medium'
weight = 10.0
title = 'The system must not accept ICMPv4 secure redirect packets by default.'
description = 'Accepting "secure" ICMP redirects (from those gateways listed as default gateways) has few legitimate uses. It should be disabled unless it is absolutely required.'
fixtext = [==[To set the runtime status of the "net.ipv4.conf.default.secure_redirects" kernel parameter, run the following command: 

# sysctl -w net.ipv4.conf.default.secure_redirects=0

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.conf.default.secure_redirects = 0]==]
checktext = [=[The status of the "net.ipv4.conf.default.secure_redirects" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.conf.default.secure_redirects

The output of the command should indicate a value of "0". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.conf.default.secure_redirects /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
