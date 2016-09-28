id = 'V-38612'
severity = 'medium'
weight = 10.0
title = 'The SSH daemon must not allow host-based authentication.'
description = 'SSH trust relationships mean a compromise on one host can allow an attacker to move trivially to other hosts.'
fixtext = [=[SSH's cryptographic host-based authentication is more secure than ".rhosts" authentication, since hosts are cryptographically authenticated. However, it is not recommended that hosts unilaterally trust one another, even within an organization. 

To disable host-based authentication, add or correct the following line in "/etc/ssh/sshd_config": 

HostbasedAuthentication no]=]
checktext = [=[To determine how the SSH daemon's "HostbasedAuthentication" option is set, run the following command: 

# grep -i HostbasedAuthentication /etc/ssh/sshd_config

If no line, a commented line, or a line indicating the value "no" is returned, then the required value is set. 
If the required value is not set, this is a finding.]=]

function test()
end

function fix()
end
