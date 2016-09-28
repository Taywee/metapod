id = 'V-38456'
severity = 'low'
weight = 10.0
title = 'The system must use a separate file system for /var.'
description = 'Ensuring that "/var" is mounted on its own partition enables the setting of more restrictive mount options. This helps protect system services such as daemons or other programs which use it. It is not uncommon for the "/var" directory to contain world-writable directories, installed by other software packages.'
fixtext = 'The "/var" directory is used by daemons and other system services to store frequently-changing data. Ensure that "/var" has its own partition or logical volume at installation time, or migrate it using LVM.'
checktext = [=[Run the following command to determine if "/var" is on its own partition or logical volume: 

$ mount | grep "on /var "

If "/var" has its own partition or volume group, a line will be returned. 
If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
