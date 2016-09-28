id = 'V-38598'
severity = 'high'
weight = 10.0
title = 'The rexecd service must not be running.'
description = 'The rexec service uses unencrypted network communications, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network.'
fixtext = [=[The "rexec" service, which is available with the "rsh-server" package and runs as a service through xinetd, should be disabled. The "rexec" service can be disabled with the following command: 

# chkconfig rexec off]=]
checktext = [=[To check that the "rexec" service is disabled in system boot configuration, run the following command:

# chkconfig "rexec" --list

Output should indicate the "rexec" service has either not been installed, or has been disabled, as shown in the example below:

# chkconfig "rexec" --list
rexec off
OR
error reading information on service rexec: No such file or directory


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
