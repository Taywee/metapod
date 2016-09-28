id = 'V-38604'
severity = 'medium'
weight = 10.0
title = 'The ypbind service must not be running.'
description = 'Disabling the "ypbind" service ensures the system is not acting as a client in a NIS or NIS+ domain.'
fixtext = [=[The "ypbind" service, which allows the system to act as a client in a NIS or NIS+ domain, should be disabled. The "ypbind" service can be disabled with the following commands: 

# chkconfig ypbind off
# service ypbind stop]=]
checktext = [=[To check that the "ypbind" service is disabled in system boot configuration, run the following command: 

# chkconfig "ypbind" --list

Output should indicate the "ypbind" service has either not been installed, or has been disabled at all runlevels, as shown in the example below: 

# chkconfig "ypbind" --list
"ypbind" 0:off 1:off 2:off 3:off 4:off 5:off 6:off

Run the following command to verify "ypbind" is disabled through current runtime configuration: 

# service ypbind status

If the service is disabled the command will return the following output: 

ypbind is stopped


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
