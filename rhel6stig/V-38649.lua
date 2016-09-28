id = 'V-38649'
severity = 'low'
weight = 10.0
title = 'The system default umask for the csh shell must be 077.'
description = 'The umask value influences the permissions assigned to files when they are created. A misconfigured umask value could result in files with excessive permissions that can be read and/or written to by unauthorized users.'
fixtext = [=[To ensure the default umask for users of the C shell is set properly, add or correct the "umask" setting in "/etc/csh.cshrc" to read as follows: 

umask 077]=]
checktext = [=[Verify the "umask" setting is configured correctly in the "/etc/csh.cshrc" file by running the following command: 

# grep "umask" /etc/csh.cshrc

All output must show the value of "umask" set to 077, as shown in the below: 

# grep "umask" /etc/csh.cshrc
umask 077


If the above command returns no output, or if the umask is configured incorrectly, this is a finding.]=]

function test()
end

function fix()
end
