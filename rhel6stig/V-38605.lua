id = 'V-38605'
severity = 'medium'
weight = 10.0
title = 'The cron service must be running.'
description = 'Due to its usage for maintenance and security-supporting tasks, enabling the cron daemon is essential.'
fixtext = [=[The "crond" service is used to execute commands at preconfigured times. It is required by almost all systems to perform necessary maintenance tasks, such as notifying root of system activity. The "crond" service can be enabled with the following commands: 

# chkconfig crond on
# service crond start]=]
checktext = [=[Run the following command to determine the current status of the "crond" service: 

# service crond status

If the service is enabled, it should return the following: 

crond is running...


If the service is not running, this is a finding.]=]

function test()
end

function fix()
end
