id = 'V-38463'
severity = 'low'
weight = 10.0
title = 'The system must use a separate file system for /var/log.'
description = 'Placing "/var/log" in its own partition enables better separation between log files and other files in "/var/".'
fixtext = 'System logs are stored in the "/var/log" directory. Ensure that it has its own partition or logical volume at installation time, or migrate it using LVM.'
checktext = [=[Run the following command to determine if "/var/log" is on its own partition or logical volume: 

$ mount | grep "on /var/log "

If "/var/log" has its own partition or volume group, a line will be returned. 
If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
