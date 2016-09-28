id = 'V-38537'
severity = 'low'
weight = 10.0
title = 'The system must ignore ICMPv4 bogus error responses.'
description = 'Ignoring bogus ICMP error responses reduces log size, although some activity would not be logged.'
fixtext = [==[To set the runtime status of the "net.ipv4.icmp_ignore_bogus_error_responses" kernel parameter, run the following command: 

# sysctl -w net.ipv4.icmp_ignore_bogus_error_responses=1

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.icmp_ignore_bogus_error_responses = 1]==]
checktext = [=[The status of the "net.ipv4.icmp_ignore_bogus_error_responses" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.icmp_ignore_bogus_error_responses

The output of the command should indicate a value of "1". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.icmp_ignore_bogus_error_responses /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
