id = 'V-38535'
severity = 'low'
weight = 10.0
title = 'The system must not respond to ICMPv4 sent to a broadcast address.'
description = 'Ignoring ICMP echo requests (pings) sent to broadcast or multicast addresses makes the system slightly more difficult to enumerate on the network.'
fixtext = [==[To set the runtime status of the "net.ipv4.icmp_echo_ignore_broadcasts" kernel parameter, run the following command: 

# sysctl -w net.ipv4.icmp_echo_ignore_broadcasts=1

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.icmp_echo_ignore_broadcasts = 1]==]
checktext = [=[The status of the "net.ipv4.icmp_echo_ignore_broadcasts" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.icmp_echo_ignore_broadcasts

The output of the command should indicate a value of "1". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.icmp_echo_ignore_broadcasts /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
