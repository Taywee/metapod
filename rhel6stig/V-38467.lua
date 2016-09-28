id = 'V-38467'
severity = 'low'
weight = 10.0
title = 'The system must use a separate file system for the system audit data path.'
description = 'Placing "/var/log/audit" in its own partition enables better separation between audit files and other files, and helps ensure that auditing cannot be halted due to the partition running out of space.'
fixtext = 'Audit logs are stored in the "/var/log/audit" directory. Ensure that it has its own partition or logical volume at installation time, or migrate it later using LVM. Make absolutely certain that it is large enough to store all audit logs that will be created by the auditing daemon.'
checktext = [=[Run the following command to determine if "/var/log/audit" is on its own partition or logical volume: 

$ mount | grep "on /var/log/audit "

If "/var/log/audit" has its own partition or volume group, a line will be returned. 
If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
