id = 'V-38437'
severity = 'low'
weight = 10.0
title = 'Automated file system mounting tools must not be enabled unless needed.'
description = [=[All filesystems that are required for the successful operation of the system should be explicitly listed in "/etc/fstab" by an administrator. New filesystems should not be arbitrarily introduced via the automounter.

The "autofs" daemon mounts and unmounts filesystems, such as user home directories shared via NFS, on demand. In addition, autofs can be used to handle removable media, and the default configuration provides the cdrom device as "/misc/cd". However, this method of providing access to removable media is not common, so autofs can almost always be disabled if NFS is not in use. Even if NFS is required, it is almost always possible to configure filesystem mounts statically by editing "/etc/fstab" rather than relying on the automounter. ]=]
fixtext = [=[If the "autofs" service is not needed to dynamically mount NFS filesystems or removable media, disable the service for all runlevels: 

# chkconfig --level 0123456 autofs off

Stop the service if it is already running: 

# service autofs stop]=]
checktext = [=[To verify the "autofs" service is disabled, run the following command: 

chkconfig --list autofs

If properly configured, the output should be the following: 

autofs 0:off 1:off 2:off 3:off 4:off 5:off 6:off

Verify the "autofs" service is not running:

# service autofs status

If the autofs service is enabled or running, this is a finding.]=]

function test()
end

function fix()
end
