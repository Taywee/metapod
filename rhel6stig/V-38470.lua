id = 'V-38470'
severity = 'medium'
weight = 10.0
title = 'The audit system must alert designated staff members when the audit storage volume approaches capacity.'
description = 'Notifying administrators of an impending disk space problem may allow them to take corrective action prior to any disruption.'
fixtext = [==[The "auditd" service can be configured to take an action when disk space starts to run low. Edit the file "/etc/audit/auditd.conf". Modify the following line, substituting [ACTION] appropriately: 

space_left_action = [ACTION]

Possible values for [ACTION] are described in the "auditd.conf" man page. These include: 

"ignore"
"syslog"
"email"
"exec"
"suspend"
"single"
"halt"


Set this to "email" (instead of the default, which is "suspend") as it is more likely to get prompt attention.  The "syslog" option is acceptable, provided the local log management infrastructure notifies an appropriate administrator in a timely manner.

RHEL-06-000521 ensures that the email generated through the operation "space_left_action" will be sent to an administrator.]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine if the system is configured to email the administrator when disk space is starting to run low: 

# grep space_left_action /etc/audit/auditd.conf
space_left_action = email


If the system is not configured to send an email to the system administrator when disk space is starting to run low, this is a finding.  The "syslog" option is acceptable when it can be demonstrated that the local log management infrastructure notifies an appropriate administrator in a timely manner.]==]

function test()
end

function fix()
end
