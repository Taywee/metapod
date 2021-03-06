id = 'V-38539'
severity = 'medium'
weight = 10.0
title = 'The system must be configured to use TCP syncookies when experiencing a TCP SYN flood.'
description = "A TCP SYN flood attack can cause a denial of service by filling a system's TCP connection table with connections in the SYN_RCVD state. Syncookies can be used to track a connection when a subsequent ACK is received, verifying the initiator is attempting a valid connection and is not a flood source. This feature is activated when a flood condition is detected, and enables the system to continue servicing valid connection requests."
fixtext = [==[To set the runtime status of the "net.ipv4.tcp_syncookies" kernel parameter, run the following command: 

# sysctl -w net.ipv4.tcp_syncookies=1

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.tcp_syncookies = 1]==]
checktext = [=[The status of the "net.ipv4.tcp_syncookies" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.tcp_syncookies

The output of the command should indicate a value of "1". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.tcp_syncookies /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
