id = 'V-38634'
severity = 'medium'
weight = 10.0
title = 'The system must rotate audit log files that reach the maximum file size.'
description = 'Automatically rotating logs (by setting this to "rotate") minimizes the chances of the system unexpectedly running out of disk space by being overwhelmed with log data. However, for systems that must never discard log data, or which use external processes to transfer it and reclaim space, "keep_logs" can be employed.'
fixtext = [==[The default action to take when the logs reach their maximum size is to rotate the log files, discarding the oldest one. To configure the action taken by "auditd", add or correct the line in "/etc/audit/auditd.conf": 

max_log_file_action = [ACTION]

Possible values for [ACTION] are described in the "auditd.conf" man page. These include: 

"ignore"
"syslog"
"suspend"
"rotate"
"keep_logs"


Set the "[ACTION]" to "rotate" to ensure log rotation occurs. This is the default. The setting is case-insensitive.]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine if the system is configured to rotate logs when they reach their maximum size:

# grep max_log_file_action /etc/audit/auditd.conf
max_log_file_action = rotate

If the "keep_logs" option is configured for the "max_log_file_action" line in "/etc/audit/auditd.conf" and an alternate process is in place to ensure audit data does not overwhelm local audit storage, this is not a finding.

If the system has not been properly set up to rotate audit logs, this is a finding.]==]

function test()
end

function fix()
end
