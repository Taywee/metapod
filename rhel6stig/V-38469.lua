id = 'V-38469'
severity = 'medium'
weight = 10.0
title = 'All system command files must have mode 755 or less permissive.'
description = 'System binaries are executed by privileged users, as well as system services, and restrictive permissions are necessary to ensure execution of these programs cannot be co-opted.'
fixtext = [=[System executables are stored in the following directories by default: 

/bin
/usr/bin
/usr/local/bin
/sbin
/usr/sbin
/usr/local/sbin

If any file in these directories is found to be group-writable or world-writable, correct its permission with the following command: 

# chmod go-w [FILE]]=]
checktext = [=[System executables are stored in the following directories by default: 

/bin
/usr/bin
/usr/local/bin
/sbin
/usr/sbin
/usr/local/sbin

All files in these directories should not be group-writable or world-writable. To find system executables that are group-writable or world-writable, run the following command for each directory [DIR] which contains system executables: 

$ find -L [DIR] -perm /022 -type f

If any system executables are found to be group-writable or world-writable, this is a finding.]=]

function test()
end

function fix()
end
