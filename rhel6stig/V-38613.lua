id = 'V-38613'
severity = 'medium'
weight = 10.0
title = 'The system must not permit root logins using remote access programs such as ssh.'
description = "Permitting direct root login reduces auditable information about who ran privileged commands on the system and also allows direct attack attempts on root's password."
fixtext = [=[The root user should never be allowed to log in to a system directly over a network. To disable root login via SSH, add or correct the following line in "/etc/ssh/sshd_config": 

PermitRootLogin no]=]
checktext = [=[To determine how the SSH daemon's "PermitRootLogin" option is set, run the following command: 

# grep -i PermitRootLogin /etc/ssh/sshd_config

If a line indicating "no" is returned, then the required value is set. 
If the required value is not set, this is a finding.]=]

function test()
end

function fix()
end
