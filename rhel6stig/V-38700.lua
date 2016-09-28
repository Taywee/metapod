id = 'V-38700'
severity = 'medium'
weight = 10.0
title = 'The operating system must provide a near real-time alert when any of the organization defined list of compromise or potential compromise indicators occurs. '
description = 'By default, AIDE does not install itself for periodic execution. Periodically running AIDE may reveal unexpected changes in installed files.'
fixtext = [=[AIDE should be executed on a periodic basis to check for changes. To implement a daily execution of AIDE at 4:05am using cron, add the following line to /etc/crontab: 

05 4 * * * root /usr/sbin/aide --check

AIDE can be executed periodically through other means; this is merely one example.]=]
checktext = [=[To determine that periodic AIDE execution has been scheduled, run the following command: 

# grep aide /etc/crontab /etc/cron.*/*

If there is no output, this is a finding.]=]

function test()
end

function fix()
end
