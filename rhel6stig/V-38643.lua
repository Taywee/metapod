id = 'V-38643'
severity = 'medium'
weight = 10.0
title = 'There must be no world-writable files on the system.'
description = 'Data in world-writable files can be modified by any user on the system. In almost all circumstances, files can be configured using a combination of user and group permissions to support whatever legitimate access is needed without the risk caused by world-writable files.'
fixtext = 'It is generally a good idea to remove global (other) write access to a file when it is discovered. However, check with documentation for specific applications before making changes. Also, monitor for recurring world-writable files, as these may be symptoms of a misconfigured application or user account.'
checktext = [=[To find world-writable files, run the following command for each local partition [PART], excluding special filesystems such as /selinux, /proc, or /sys: 

# find [PART] -xdev -type f -perm -002

If there is output, this is a finding.]=]

function test()
end

function fix()
end
