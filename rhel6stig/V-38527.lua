id = 'V-38527'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit all attempts to alter system time through clock_settime.'
description = 'Arbitrary changes to the system time can be used to obfuscate nefarious activities in log files, as well as to confuse network services that are highly dependent upon an accurate system time (such as sshd). All changes to the system time should be audited.'
fixtext = [==[On a 32-bit system, add the following to "/etc/audit/audit.rules": 

# audit_time_rules
-a always,exit -F arch=b32 -S clock_settime -k audit_time_rules

On a 64-bit system, add the following to "/etc/audit/audit.rules": 

# audit_time_rules
-a always,exit -F arch=b64 -S clock_settime -k audit_time_rules

The -k option allows for the specification of a key in string form that can be used for better reporting capability through ausearch and aureport. Multiple system calls can be defined on the same line to save space if desired, but is not required. See an example of multiple combined syscalls: 

-a always,exit -F arch=b64 -S adjtimex -S settimeofday -S clock_settime -k audit_time_rules]==]
checktext = [=[To determine if the system is configured to audit calls to the "clock_settime" system call, run the following command:

$ sudo grep -w "clock_settime" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. 

If the system is not configured to audit time changes, this is a finding.]=]

function test()
end

function fix()
end
