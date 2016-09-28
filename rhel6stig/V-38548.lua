id = 'V-38548'
severity = 'medium'
weight = 10.0
title = 'The system must ignore ICMPv6 redirects by default.'
description = 'An illicit ICMP redirect message could result in a man-in-the-middle attack.'
fixtext = [==[To set the runtime status of the "net.ipv6.conf.default.accept_redirects" kernel parameter, run the following command: 

# sysctl -w net.ipv6.conf.default.accept_redirects=0

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv6.conf.default.accept_redirects = 0]==]
checktext = [=[If IPv6 is disabled, this is not applicable.

The status of the "net.ipv6.conf.default.accept_redirects" kernel parameter can be queried by running the following command:

$ sysctl net.ipv6.conf.default.accept_redirects

The output of the command should indicate a value of "0". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv6.conf.default.accept_redirects /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
