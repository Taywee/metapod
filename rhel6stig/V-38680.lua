id = 'V-38680'
severity = 'medium'
weight = 10.0
title = 'The audit system must identify staff members to receive notifications of audit log storage volume capacity issues.'
description = 'Email sent to the root account is typically aliased to the administrators of the system, who can take appropriate action.'
fixtext = [==[The "auditd" service can be configured to send email to a designated account in certain situations. Add or correct the following line in "/etc/audit/auditd.conf" to ensure that administrators are notified via email for those situations: 

action_mail_acct = root]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine if the system is configured to send email to an account when it needs to notify an administrator: 

action_mail_acct = root


If auditd is not configured to send emails per identified actions, this is a finding.]==]

function test()
end

function fix()
end
