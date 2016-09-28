id = 'V-38616'
severity = 'low'
weight = 10.0
title = 'The SSH daemon must not permit user environment settings.'
description = 'SSH environment options potentially allow users to bypass access restriction in some configurations.'
fixtext = [=[To ensure users are not able to present environment options to the SSH daemon, add or correct the following line in "/etc/ssh/sshd_config": 

PermitUserEnvironment no]=]
checktext = [=[To ensure users are not able to present environment daemons, run the following command: 

# grep PermitUserEnvironment /etc/ssh/sshd_config

If properly configured, output should be: 

PermitUserEnvironment no


If it is not, this is a finding.]=]

function test()
end

function fix()
end
