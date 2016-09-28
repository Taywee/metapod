id = 'V-38473'
severity = 'low'
weight = 10.0
title = 'The system must use a separate file system for user home directories.'
description = 'Ensuring that "/home" is mounted on its own partition enables the setting of more restrictive mount options, and also helps ensure that users cannot trivially fill partitions used for log or audit data storage.'
fixtext = 'If user home directories will be stored locally, create a separate partition for "/home" at installation time (or migrate it later using LVM). If "/home" will be mounted from another system such as an NFS server, then creating a separate partition is not necessary at installation time, and the mountpoint can instead be configured later.'
checktext = [=[Run the following command to determine if "/home" is on its own partition or logical volume: 

$ mount | grep "on /home "

If "/home" has its own partition or volume group, a line will be returned. 
If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
