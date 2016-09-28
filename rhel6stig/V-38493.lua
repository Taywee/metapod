id = 'V-38493'
severity = 'medium'
weight = 10.0
title = 'Audit log directories must have mode 0755 or less permissive.'
description = 'If users can delete audit logs, audit trails can be modified or destroyed.'
fixtext = [=[Change the mode of the audit log directories with the following command: 

# chmod go-w [audit_directory]]=]
checktext = [=[Run the following command to check the mode of the system audit directories: 

grep "^log_file" /etc/audit/auditd.conf|sed 's/^[^/]*//; s/[^/]*$//'|xargs stat -c %a:%n

Audit directories must be mode 0755 or less permissive. 
If any are more permissive, this is a finding.]=]

function test()
end

function fix()
end
