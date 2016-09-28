id = 'V-38575'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit user deletions of files and programs.'
description = 'Auditing file deletions will create an audit trail for files that are removed from the system. The audit trail could aid in system troubleshooting, as well as detecting malicious processes that attempt to delete log files to conceal their presence.'
fixtext = [==[At a minimum, the audit system should collect file deletion events for all users and root. Add the following (or equivalent) to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: 

-a always,exit -F arch=ARCH -S rmdir -S unlink -S unlinkat -S rename -S renameat -F auid>=500 -F auid!=4294967295 -k delete
-a always,exit -F arch=ARCH -S rmdir -S unlink -S unlinkat -S rename -S renameat -F auid=0 -k delete

]==]
checktext = [=[To determine if the system is configured to audit calls to the "rmdir" system call, run the following command:

$ sudo grep -w "rmdir" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. To determine if the system is configured to audit calls to the "unlink" system call, run the following command:

$ sudo grep -w "unlink" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. To determine if the system is configured to audit calls to the "unlinkat" system call, run the following command:

$ sudo grep -w "unlinkat" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. To determine if the system is configured to audit calls to the "rename" system call, run the following command:

$ sudo grep -w "rename" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line. To determine if the system is configured to audit calls to the "renameat" system call, run the following command:

$ sudo grep -w "renameat" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return a line.

If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
