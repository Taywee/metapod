id = 'V-38551'
severity = 'medium'
weight = 10.0
title = 'The operating system must connect to external networks or information systems only through managed IPv6 interfaces consisting of boundary protection devices arranged in accordance with an organizational security architecture.'
description = 'The "ip6tables" service provides the system\'s host-based firewalling capability for IPv6 and ICMPv6.'
fixtext = [=[The "ip6tables" service can be enabled with the following commands: 

# chkconfig ip6tables on
# service ip6tables start]=]
checktext = [=[If the system is a cross-domain system, this is not applicable.

If IPV6 is disabled, this is not applicable.

Run the following command to determine the current status of the "ip6tables" service: 

# service ip6tables status

If the service is not running, it should return the following: 

ip6tables: Firewall is not running.


If the service is not running, this is a finding.]=]

function test()
end

function fix()
end
