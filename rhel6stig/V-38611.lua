id = 'V-38611'
severity = 'medium'
weight = 10.0
title = 'The SSH daemon must ignore .rhosts files.'
description = 'SSH trust relationships mean a compromise on one host can allow an attacker to move trivially to other hosts.'
fixtext = [=[SSH can emulate the behavior of the obsolete rsh command in allowing users to enable insecure access to their accounts via ".rhosts" files. 

To ensure this behavior is disabled, add or correct the following line in "/etc/ssh/sshd_config": 

IgnoreRhosts yes]=]
checktext = [=[To determine how the SSH daemon's "IgnoreRhosts" option is set, run the following command: 

# grep -i IgnoreRhosts /etc/ssh/sshd_config

If no line, a commented line, or a line indicating the value "yes" is returned, then the required value is set. 
If the required value is not set, this is a finding.]=]

function test()
end

function fix()
end
