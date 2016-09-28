id = 'V-38654'
severity = 'medium'
weight = 10.0
title = 'Remote file systems must be mounted with the nosuid option.'
description = 'NFS mounts should not present suid binaries to users. Only vendor-supplied suid executables should be installed to their default location on the local filesystem.'
fixtext = 'Add the "nosuid" option to the fourth column of "/etc/fstab" for the line which controls mounting of any NFS mounts.'
checktext = [=[To verify the "nosuid" option is configured for all NFS mounts, run the following command: 

$ mount | grep nfs

All NFS mounts should show the "nosuid" setting in parentheses, along with other mount options. 
If the setting does not show, this is a finding.]=]

function test()
end

function fix()
end
