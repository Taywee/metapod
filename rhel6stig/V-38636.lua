id = 'V-38636'
severity = 'medium'
weight = 10.0
title = 'The system must retain enough rotated audit logs to cover the required log retention period.'
description = 'The total storage for audit log files must be large enough to retain log information over the period required. This is a function of the maximum log file size and the number of logs retained.'
fixtext = [==[Determine how many log files "auditd" should retain when it rotates logs. Edit the file "/etc/audit/auditd.conf". Add or modify the following line, substituting [NUMLOGS] with the correct value: 

num_logs = [NUMLOGS]

Set the value to 5 for general-purpose systems. Note that values less than 2 result in no log rotation.]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine how many logs the system is configured to retain after rotation: "# grep num_logs /etc/audit/auditd.conf" 

num_logs = 5


If the overall system log file(s) retention hasn't been properly set up, this is a finding.]==]

function test()
end

function fix()
end
