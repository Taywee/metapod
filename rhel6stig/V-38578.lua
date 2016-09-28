id = 'V-38578'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit changes to the /etc/sudoers file.'
description = 'The actions taken by system administrators should be audited to keep a record of what was executed on the system, as well as, for accountability purposes.'
fixtext = [=[At a minimum, the audit system should collect administrator actions for all users and root. Add the following to "/etc/audit/audit.rules": 

-w /etc/sudoers -p wa -k actions]=]
checktext = [=[To verify that auditing is configured for system administrator actions, run the following command: 

$ sudo grep -w "/etc/sudoers" /etc/audit/audit.rules

If the system is configured to watch for changes to its sudoers configuration, a line should be returned (including "-p wa" indicating permissions that are watched). 

If there is no output, this is a finding.]=]

function test()
end

function fix()
end
