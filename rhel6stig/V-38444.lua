id = 'V-38444'
severity = 'medium'
weight = 10.0
title = 'The systems local IPv6 firewall must implement a deny-all, allow-by-exception policy for inbound packets.'
description = 'In "ip6tables" the default policy is applied only after all the applicable rules in the table are examined for a match. Setting the default policy to "DROP" implements proper design for a firewall, i.e., any packets which are not explicitly permitted should not be accepted.'
fixtext = [=[To set the default policy to DROP (instead of ACCEPT) for the built-in INPUT chain which processes incoming packets, add or correct the following line in "/etc/sysconfig/ip6tables": 

:INPUT DROP [0:0]

Restart the IPv6 firewall:

# service ip6tables restart]=]
checktext = [=[If IPv6 is disabled, this is not applicable.

Inspect the file "/etc/sysconfig/ip6tables" to determine the default policy for the INPUT chain. It should be set to DROP:

# grep ":INPUT" /etc/sysconfig/ip6tables

If the default policy for the INPUT chain is not set to DROP, this is a finding.]=]

function test()
end

function fix()
end
