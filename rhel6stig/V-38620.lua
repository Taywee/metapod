id = 'V-38620'
severity = 'medium'
weight = 10.0
title = 'The system clock must be synchronized continuously, or at least daily.'
description = 'Enabling the "ntpd" service ensures that the "ntpd" service will be running and that the system will synchronize its time to any servers specified. This is important whether the system is configured to be a client (and synchronize only its own clock) or it is also acting as an NTP server to other systems. Synchronizing time is essential for authentication services such as Kerberos, but it is also important for maintaining accurate logs and auditing possible security breaches.'
fixtext = [=[The "ntpd" service can be enabled with the following command: 

# chkconfig ntpd on
# service ntpd start]=]
checktext = [=[Run the following command to determine the current status of the "ntpd" service: 

# service ntpd status

If the service is enabled, it should return the following: 

ntpd is running...


If the service is not running, this is a finding.]=]

function test()
end

function fix()
end
