id = 'V-38559'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit all discretionary access control permission modifications using lremovexattr.'
description = 'The changing of file permissions could indicate that a user is attempting to gain access to information that would otherwise be disallowed. Auditing DAC modifications can facilitate the identification of patterns of abuse among both authorized and unauthorized users.'
fixtext = [==[At a minimum, the audit system should collect file permission changes for all users and root. Add the following to "/etc/audit/audit.rules": 

-a always,exit -F arch=b32 -S lremovexattr -F auid>=500 -F auid!=4294967295 \
-k perm_mod
-a always,exit -F arch=b32 -S lremovexattr -F auid=0 -k perm_mod

If the system is 64-bit, then also add the following: 

-a always,exit -F arch=b64 -S lremovexattr -F auid>=500 -F auid!=4294967295 \
-k perm_mod
-a always,exit -F arch=b64 -S lremovexattr -F auid=0 -k perm_mod]==]
checktext = [=[To determine if the system is configured to audit calls to the "lremovexattr" system call, run the following command:

$ sudo grep -w "lremovexattr" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return several lines. 

If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
