id = 'V-38491'
severity = 'high'
weight = 10.0
title = 'There must be no .rhosts or hosts.equiv files on the system.'
description = 'Trust files are convenient, but when used in conjunction with the R-services, they can allow unauthenticated access to a system.'
fixtext = [=[The files "/etc/hosts.equiv" and "~/.rhosts" (in each user's home directory) list remote hosts and users that are trusted by the local system when using the rshd daemon. To remove these files, run the following command to delete them from any location. 

# rm /etc/hosts.equiv



$ rm ~/.rhosts]=]
checktext = [=[The existence of the file "/etc/hosts.equiv" or a file named ".rhosts" inside a user home directory indicates the presence of an Rsh trust relationship. 
If these files exist, this is a finding.]=]

function test()
end

function fix()
end
