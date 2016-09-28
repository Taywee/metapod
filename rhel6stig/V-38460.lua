id = 'V-38460'
severity = 'low'
weight = 10.0
title = 'The NFS server must not have the all_squash option enabled.'
description = 'The "all_squash" option maps all client requests to a single anonymous uid/gid on the NFS server, negating the ability to track file access by user ID.'
fixtext = [=[Remove any instances of the "all_squash" option from the file "/etc/exports".  Restart the NFS daemon for the changes to take effect.

# service nfs restart]=]
checktext = [=[If the NFS server is read-only, in support of unrestricted access to organizational content, this is not applicable.

The related "root_squash" option provides protection against remote administrator-level access to NFS server content.  Its use is not a finding.

To verify the "all_squash" option has been disabled, run the following command:

# grep all_squash /etc/exports


If there is output, this is a finding.]=]

function test()
end

function fix()
end
