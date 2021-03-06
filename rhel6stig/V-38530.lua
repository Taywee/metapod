id = 'V-38530'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit all attempts to alter system time through /etc/localtime.'
description = 'Arbitrary changes to the system time can be used to obfuscate nefarious activities in log files, as well as to confuse network services that are highly dependent upon an accurate system time (such as sshd). All changes to the system time should be audited.'
fixtext = [=[Add the following to "/etc/audit/audit.rules": 

-w /etc/localtime -p wa -k audit_time_rules

The -k option allows for the specification of a key in string form that can be used for better reporting capability through ausearch and aureport and should always be used.]=]
checktext = [=[To determine if the system is configured to audit attempts to alter time via the /etc/localtime file, run the following command: 

$ sudo grep -w "/etc/localtime" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. 

If the system is not configured to audit time changes, this is a finding.]=]

function test()
end

function fix()
end
