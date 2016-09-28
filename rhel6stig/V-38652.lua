id = 'V-38652'
severity = 'medium'
weight = 10.0
title = 'Remote file systems must be mounted with the nodev option.'
description = 'Legitimate device files should only exist in the /dev directory. NFS mounts should not present device files to users.'
fixtext = 'Add the "nodev" option to the fourth column of "/etc/fstab" for the line which controls mounting of any NFS mounts.'
checktext = [=[To verify the "nodev" option is configured for all NFS mounts, run the following command: 

$ mount | grep "nfs "

All NFS mounts should show the "nodev" setting in parentheses, along with other mount options. 
If the setting does not show, this is a finding.]=]

function test()
end

function fix()
end
