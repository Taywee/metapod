id = 'V-38686'
severity = 'medium'
weight = 10.0
title = 'The systems local firewall must implement a deny-all, allow-by-exception policy for forwarded packets.'
description = 'In "iptables" the default policy is applied only after all the applicable rules in the table are examined for a match. Setting the default policy to "DROP" implements proper design for a firewall, i.e., any packets which are not explicitly permitted should not be accepted.'
fixtext = [=[To set the default policy to DROP (instead of ACCEPT) for the built-in FORWARD chain which processes packets that will be forwarded from one interface to another, add or correct the following line in "/etc/sysconfig/iptables": 

:FORWARD DROP [0:0]]=]
checktext = [=[Run the following command to ensure the default "FORWARD" policy is "DROP": 

grep ":FORWARD" /etc/sysconfig/iptables

The output must be the following: 

# grep ":FORWARD" /etc/sysconfig/iptables
:FORWARD DROP [0:0]

If it is not, this is a finding.]=]

function test()
end

function fix()
end
