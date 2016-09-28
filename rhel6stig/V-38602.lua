id = 'V-38602'
severity = 'high'
weight = 10.0
title = 'The rlogind service must not be running.'
description = 'The rlogin service uses unencrypted network communications, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network.'
fixtext = [=[The "rlogin" service, which is available with the "rsh-server" package and runs as a service through xinetd, should be disabled. The "rlogin" service can be disabled with the following command: 

# chkconfig rlogin off]=]
checktext = [=[To check that the "rlogin" service is disabled in system boot configuration, run the following command:

# chkconfig "rlogin" --list

Output should indicate the "rlogin" service has either not been installed, or has been disabled, as shown in the example below:

# chkconfig "rlogin" --list
rlogin off
OR
error reading information on service rlogin: No such file or directory


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
