id = 'V-38624'
severity = 'low'
weight = 10.0
title = 'System logs must be rotated daily.'
description = 'Log files that are not properly rotated run the risk of growing so large that they fill up the /var/log partition. Valuable logging information could be lost if the /var/log partition becomes full.'
fixtext = [=[The "logrotate" service should be installed or reinstalled if it is not installed and operating properly, by running the following command:

# yum reinstall logrotate]=]
checktext = [=[Run the following commands to determine the current status of the "logrotate" service: 

# grep logrotate /var/log/cron*

If the logrotate service is not run on a daily basis by cron, this is a finding.]=]

function test()
end

function fix()
end
