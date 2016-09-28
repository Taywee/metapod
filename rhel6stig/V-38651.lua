id = 'V-38651'
severity = 'low'
weight = 10.0
title = 'The system default umask for the bash shell must be 077.'
description = 'The umask value influences the permissions assigned to files when they are created. A misconfigured umask value could result in files with excessive permissions that can be read and/or written to by unauthorized users.'
fixtext = [=[To ensure the default umask for users of the Bash shell is set properly, add or correct the "umask" setting in "/etc/bashrc" to read as follows: 

umask 077]=]
checktext = [=[Verify the "umask" setting is configured correctly in the "/etc/bashrc" file by running the following command: 

# grep "umask" /etc/bashrc

All output must show the value of "umask" set to 077, as shown below: 

# grep "umask" /etc/bashrc
umask 077
umask 077


If the above command returns no output, or if the umask is configured incorrectly, this is a finding.]=]

function test()
end

function fix()
end
