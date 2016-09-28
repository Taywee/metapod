id = 'V-38465'
severity = 'medium'
weight = 10.0
title = 'Library files must have mode 0755 or less permissive.'
description = 'Files from shared library directories are loaded into the address space of processes (including privileged ones) or of the kernel itself at runtime. Restrictive permissions are necessary to protect the integrity of the system.'
fixtext = [=[System-wide shared library files, which are linked to executables during process load time or run time, are stored in the following directories by default: 

/lib
/lib64
/usr/lib
/usr/lib64

If any file in these directories is found to be group-writable or world-writable, correct its permission with the following command: 

# chmod go-w [FILE]]=]
checktext = [=[System-wide shared library files, which are linked to executables during process load time or run time, are stored in the following directories by default: 

/lib
/lib64
/usr/lib
/usr/lib64


Kernel modules, which can be added to the kernel during runtime, are stored in "/lib/modules". All files in these directories should not be group-writable or world-writable. To find shared libraries that are group-writable or world-writable, run the following command for each directory [DIR] which contains shared libraries: 

$ find -L [DIR] -perm /022 -type f


If any of these files (excluding broken symlinks) are group-writable or world-writable, this is a finding.]=]

function test()
end

function fix()
end
