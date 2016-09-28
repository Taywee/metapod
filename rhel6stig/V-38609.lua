id = 'V-38609'
severity = 'medium'
weight = 10.0
title = 'The TFTP service must not be running.'
description = 'Disabling the "tftp" service ensures the system is not acting as a tftp server, which does not provide encryption or authentication.'
fixtext = [=[The "tftp" service should be disabled. The "tftp" service can be disabled with the following command: 

# chkconfig tftp off]=]
checktext = [=[To check that the "tftp" service is disabled in system boot configuration, run the following command:

# chkconfig "tftp" --list

Output should indicate the "tftp" service has either not been installed, or has been disabled, as shown in the example below:

# chkconfig "tftp" --list
tftp off
OR
error reading information on service tftp: No such file or directory


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
