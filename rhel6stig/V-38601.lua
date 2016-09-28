id = 'V-38601'
severity = 'medium'
weight = 10.0
title = 'The system must not send ICMPv4 redirects from any interface.'
description = 'Sending ICMP redirects permits the system to instruct other systems to update their routing information. The ability to send ICMP redirects is only appropriate for systems acting as routers.'
fixtext = [==[To set the runtime status of the "net.ipv4.conf.all.send_redirects" kernel parameter, run the following command: 

# sysctl -w net.ipv4.conf.all.send_redirects=0

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.conf.all.send_redirects = 0]==]
checktext = [=[The status of the "net.ipv4.conf.all.send_redirects" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.conf.all.send_redirects

The output of the command should indicate a value of "0". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.conf.all.send_redirects /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
