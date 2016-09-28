id = 'V-38498'
severity = 'medium'
weight = 10.0
title = 'Audit log files must have mode 0640 or less permissive.'
description = 'If users can write to audit logs, audit trails can be modified or destroyed.'
fixtext = [=[Change the mode of the audit log files with the following command: 

# chmod 0640 [audit_file]]=]
checktext = [=[Run the following command to check the mode of the system audit logs: 

grep "^log_file" /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs stat -c %a:%n

Audit logs must be mode 0640 or less permissive. 
If any are more permissive, this is a finding.]=]

function test()
end

function fix()
end
