id = 'V-38472'
severity = 'medium'
weight = 10.0
title = 'All system command files must be owned by root.'
description = 'System binaries are executed by privileged users as well as system services, and restrictive permissions are necessary to ensure that their execution of these programs cannot be co-opted.'
fixtext = [=[System executables are stored in the following directories by default: 

/bin
/usr/bin
/usr/local/bin
/sbin
/usr/sbin
/usr/local/sbin

If any file [FILE] in these directories is found to be owned by a user other than root, correct its ownership with the following command: 

# chown root [FILE]]=]
checktext = [=[System executables are stored in the following directories by default: 

/bin
/usr/bin
/usr/local/bin
/sbin
/usr/sbin
/usr/local/sbin

All files in these directories should not be group-writable or world-writable. To find system executables that are not owned by "root", run the following command for each directory [DIR] which contains system executables: 

$ find -L [DIR] \! -user root


If any system executables are found to not be owned by root, this is a finding.]=]

function test()
end

function fix()
end
