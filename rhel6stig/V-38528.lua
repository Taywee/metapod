id = 'V-38528'
severity = 'low'
weight = 10.0
title = 'The system must log Martian packets.'
description = 'The presence of "martian" packets (which have impossible addresses) as well as spoofed packets, source-routed packets, and redirects could be a sign of nefarious network activity. Logging these packets enables this activity to be detected.'
fixtext = [==[To set the runtime status of the "net.ipv4.conf.all.log_martians" kernel parameter, run the following command: 

# sysctl -w net.ipv4.conf.all.log_martians=1

If this is not the system's default value, add the following line to "/etc/sysctl.conf": 

net.ipv4.conf.all.log_martians = 1]==]
checktext = [=[The status of the "net.ipv4.conf.all.log_martians" kernel parameter can be queried by running the following command:

$ sysctl net.ipv4.conf.all.log_martians

The output of the command should indicate a value of "1". If this value is not the default value, investigate how it could have been adjusted at runtime, and verify it is not set improperly in "/etc/sysctl.conf".

$ grep net.ipv4.conf.all.log_martians /etc/sysctl.conf

If the correct value is not returned, this is a finding.]=]

function test()
end

function fix()
end
