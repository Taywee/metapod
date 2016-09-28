id = 'V-38512'
severity = 'medium'
weight = 10.0
title = 'The operating system must prevent public IPv4 access into an organizations internal networks, except as appropriately mediated by managed interfaces employing boundary protection devices.'
description = 'The "iptables" service provides the system\'s host-based firewalling capability for IPv4 and ICMP.'
fixtext = [=[The "iptables" service can be enabled with the following commands: 

# chkconfig iptables on
# service iptables start]=]
checktext = [=[If the system is a cross-domain system, this is not applicable.

Run the following command to determine the current status of the "iptables" service: 

# service iptables status

If the service is not running, it should return the following: 

iptables: Firewall is not running.


If the service is not running, this is a finding.]=]

function test()
end

function fix()
end
