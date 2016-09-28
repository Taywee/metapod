id = 'V-38645'
severity = 'low'
weight = 10.0
title = 'The system default umask in /etc/login.defs must be 077.'
description = 'The umask value influences the permissions assigned to files when they are created. A misconfigured umask value could result in files with excessive permissions that can be read and/or written to by unauthorized users.'
fixtext = [=[To ensure the default umask controlled by "/etc/login.defs" is set properly, add or correct the "umask" setting in "/etc/login.defs" to read as follows: 

UMASK 077]=]
checktext = [=[Verify the "umask" setting is configured correctly in the "/etc/login.defs" file by running the following command: 

# grep -i "umask" /etc/login.defs

All output must show the value of "umask" set to 077, as shown in the below: 

# grep -i "umask" /etc/login.defs
UMASK 077


If the above command returns no output, or if the umask is configured incorrectly, this is a finding.]=]

function test()
end

function fix()
end
