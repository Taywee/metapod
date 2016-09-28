id = 'V-38671'
severity = 'medium'
weight = 10.0
title = 'The sendmail package must be removed.'
description = 'The sendmail software was not developed with security in mind and its design prevents it from being effectively contained by SELinux. Postfix should be used instead.'
fixtext = [=[Sendmail is not the default mail transfer agent and is not installed by default. The "sendmail" package can be removed with the following command: 

# yum erase sendmail]=]
checktext = [=[Run the following command to determine if the "sendmail" package is installed: 

# rpm -q sendmail


If the package is installed, this is a finding.]=]

function test()
end

function fix()
end
