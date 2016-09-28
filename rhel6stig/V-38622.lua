id = 'V-38622'
severity = 'medium'
weight = 10.0
title = 'Mail relaying must be restricted.'
description = 'This ensures "postfix" accepts mail messages (such as cron job reports) from the local system only, and not from the network, which protects it from network attack.'
fixtext = [==[Edit the file "/etc/postfix/main.cf" to ensure that only the following "inet_interfaces" line appears: 

inet_interfaces = localhost]==]
checktext = [=[If the system is an authorized mail relay host, this is not applicable. 

Run the following command to ensure postfix accepts mail messages from only the local system: 

$ grep inet_interfaces /etc/postfix/main.cf

If properly configured, the output should show only "localhost". 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
