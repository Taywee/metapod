id = 'V-54381'
severity = 'medium'
weight = 10.0
title = 'The audit system must switch the system to single-user mode when available audit storage volume becomes dangerously low.'
description = 'Administrators should be made aware of an inability to record audit records. If a separate partition or logical volume of adequate size is used, running low on space for audit records should never occur. '
fixtext = [==[The "auditd" service can be configured to take an action when disk space is running low but prior to running out of space completely. Edit the file "/etc/audit/auditd.conf". Add or modify the following line, substituting [ACTION] appropriately:

admin_space_left_action = [ACTION]

Set this value to "single" to cause the system to switch to single-user mode for corrective action. Acceptable values also include "suspend" and "halt". For certain systems, the need for availability outweighs the need to log all actions, and a different setting should be determined. Details regarding all possible values for [ACTION] are described in the "auditd.conf" man page. ]==]
checktext = [==[Inspect "/etc/audit/auditd.conf" and locate the following line to determine if the system is configured to either suspend, switch to single-user mode, or halt when disk space has run low:

admin_space_left_action = single

If the system is not configured to switch to single-user mode, suspend, or halt for corrective action, this is a finding.]==]

function test()
end

function fix()
end
