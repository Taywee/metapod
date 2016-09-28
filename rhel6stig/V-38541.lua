id = 'V-38541'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit modifications to the systems Mandatory Access Control (MAC) configuration (SELinux).'
description = "The system's mandatory access policy (SELinux) should not be arbitrarily changed by anything other than administrator action. All changes to MAC policy should be audited."
fixtext = [=[Add the following to "/etc/audit/audit.rules": 

-w /etc/selinux/ -p wa -k MAC-policy]=]
checktext = [=[To determine if the system is configured to audit changes to its SELinux configuration files, run the following command: 

$ sudo grep -w "/etc/selinux" /etc/audit/audit.rules

If the system is configured to watch for changes to its SELinux configuration, a line should be returned (including "-p wa" indicating permissions that are watched). 

If the system is not configured to audit attempts to change the MAC policy, this is a finding.]=]

function test()
end

function fix()
end
