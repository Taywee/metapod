id = 'V-38566'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit failed attempts to access files and programs.'
description = 'Unsuccessful attempts to access files could be an indicator of malicious activity on a system. Auditing these events could serve as evidence of potential system compromise.'
fixtext = [==[At a minimum, the audit system should collect unauthorized file accesses for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: 

-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \
-S ftruncate -F exit=-EACCES -F auid>=500 -F auid!=4294967295 -k access
-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \
-S ftruncate -F exit=-EPERM -F auid>=500 -F auid!=4294967295 -k access
-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \
-S ftruncate -F exit=-EACCES -F auid=0 -k access
-a always,exit -F arch=ARCH -S creat -S open -S openat -S truncate \
-S ftruncate -F exit=-EPERM -F auid=0 -k access]==]
checktext = [=[To verify that the audit system collects unauthorized file accesses, run the following commands: 

# grep EACCES /etc/audit/audit.rules



# grep EPERM /etc/audit/audit.rules


If either command lacks output, this is a finding.]=]

function test()
end

function fix()
end
