id = 'V-38633'
severity = 'medium'
weight = 10.0
title = 'The system must set a maximum audit log file size.'
description = 'The total storage for audit log files must be large enough to retain log information over the period required. This is a function of the maximum log file size and the number of logs retained.'
fixtext = [==[Determine the amount of audit data (in megabytes) which should be retained in each log file. Edit the file "/etc/audit/auditd.conf". Add or modify the following line, substituting the correct value for [STOREMB]: 

max_log_file = [STOREMB]

Set the value to "6" (MB) or higher for general-purpose systems. Larger values, of course, support retention of even more audit data.]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine how much data the system will retain in each audit log file: "# grep max_log_file /etc/audit/auditd.conf" 

max_log_file = 6


If the system audit data threshold hasn't been properly set up, this is a finding.]==]

function test()
end

function fix()
end
