id = 'V-38648'
severity = 'low'
weight = 10.0
title = 'The qpidd service must not be running.'
description = 'The qpidd service is automatically installed when the "base" package selection is selected during installation. The qpidd service listens for network connections which increases the attack surface of the system. If the system is not intended to receive AMQP traffic then the "qpidd" service is not needed and should be disabled or removed.'
fixtext = [=[The "qpidd" service provides high speed, secure, guaranteed delivery services. It is an implementation of the Advanced Message Queuing Protocol. By default the qpidd service will bind to port 5672 and listen for connection attempts. The "qpidd" service can be disabled with the following commands: 

# chkconfig qpidd off
# service qpidd stop]=]
checktext = [=[To check that the "qpidd" service is disabled in system boot configuration, run the following command: 

# chkconfig "qpidd" --list

Output should indicate the "qpidd" service has either not been installed, or has been disabled at all runlevels, as shown in the example below: 

# chkconfig "qpidd" --list
"qpidd" 0:off 1:off 2:off 3:off 4:off 5:off 6:off

Run the following command to verify "qpidd" is disabled through current runtime configuration: 

# service qpidd status

If the service is disabled the command will return the following output: 

qpidd is stopped


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
