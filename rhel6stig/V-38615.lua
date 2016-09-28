id = 'V-38615'
severity = 'medium'
weight = 10.0
title = 'The SSH daemon must be configured with the Department of Defense (DoD) login banner.'
description = 'The warning message reinforces policy awareness during the logon process and facilitates possible legal action against attackers. Alternatively, systems whose ownership should not be obvious should ensure usage of a banner that does not provide easy attribution.'
fixtext = [=[To enable the warning banner and ensure it is consistent across the system, add or correct the following line in "/etc/ssh/sshd_config": 

Banner /etc/issue

Another section contains information on how to create an appropriate system-wide warning banner.]=]
checktext = [=[To determine how the SSH daemon's "Banner" option is set, run the following command: 

# grep -i Banner /etc/ssh/sshd_config

If a line indicating /etc/issue is returned, then the required value is set. 
If the required value is not set, this is a finding.]=]

function test()
end

function fix()
end
