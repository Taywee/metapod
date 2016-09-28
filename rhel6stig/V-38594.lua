id = 'V-38594'
severity = 'high'
weight = 10.0
title = 'The rshd service must not be running.'
description = 'The rsh service uses unencrypted network communications, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network.'
fixtext = [=[The "rsh" service, which is available with the "rsh-server" package and runs as a service through xinetd, should be disabled. The "rsh" service can be disabled with the following command: 

# chkconfig rsh off]=]
checktext = [=[To check that the "rsh" service is disabled in system boot configuration, run the following command:

# chkconfig "rsh" --list

Output should indicate the "rsh" service has either not been installed, or has been disabled, as shown in the example below:

# chkconfig "rsh" --list
rsh off
OR
error reading information on service rsh: No such file or directory


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
