id = 'V-38445'
severity = 'medium'
weight = 10.0
title = 'Audit log files must be group-owned by root.'
description = 'If non-privileged users can write to audit logs, audit trails can be modified or destroyed.'
fixtext = [=[Change the group owner of the audit log files with the following command: 

# chgrp root [audit_file]]=]
checktext = [=[Run the following command to check the group owner of the system audit logs: 

grep "^log_file" /etc/audit/auditd.conf|sed s/^[^\/]*//|xargs stat -c %G:%n

Audit logs must be group-owned by root. 
If they are not, this is a finding.]=]

function test()
end

function fix()
end
