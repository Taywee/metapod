id = 'V-38455'
severity = 'low'
weight = 10.0
title = 'The system must use a separate file system for /tmp.'
description = 'The "/tmp" partition is used as temporary storage by many programs. Placing "/tmp" in its own partition enables the setting of more restrictive mount options, which can help protect programs which use it.'
fixtext = 'The "/tmp" directory is a world-writable directory used for temporary file storage. Ensure it has its own partition or logical volume at installation time, or migrate it using LVM.'
checktext = [=[Run the following command to determine if "/tmp" is on its own partition or logical volume: 

$ mount | grep "on /tmp "

If "/tmp" has its own partition or volume group, a line will be returned. 
If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
