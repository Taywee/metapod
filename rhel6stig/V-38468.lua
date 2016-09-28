id = 'V-38468'
severity = 'medium'
weight = 10.0
title = 'The audit system must take appropriate action when the audit storage volume is full.'
description = 'Taking appropriate action in case of a filled audit storage volume will minimize the possibility of losing audit records.'
fixtext = [==[The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: 

disk_full_action = [ACTION]

Possible values for [ACTION] are described in the "auditd.conf" man page. These include: 

"ignore"
"syslog"
"exec"
"suspend"
"single"
"halt"


Set this to "syslog", "exec", "single", or "halt".]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine if the system is configured to take appropriate action when the audit storage volume is full:

# grep disk_full_action /etc/audit/auditd.conf
disk_full_action = [ACTION]


If the system is configured to "suspend" when the volume is full or "ignore" that it is full, this is a finding.]==]

function test()
end

function fix()
end
