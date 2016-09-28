id = 'V-38495'
severity = 'medium'
weight = 10.0
title = 'Audit log files must be owned by root.'
description = 'If non-privileged users can write to audit logs, audit trails can be modified or destroyed.'
fixtext = [=[Change the owner of the audit log files with the following command: 

# chown root [audit_file]]=]
checktext = [=[Run the following command to check the owner of the system audit logs: 

grep "^log_file" /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs stat -c %U:%n

Audit logs must be owned by root. 
If they are not, this is a finding.]=]

function test()
end

function fix()
end
