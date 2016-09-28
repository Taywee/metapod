id = 'V-38590'
severity = 'low'
weight = 10.0
title = 'The system must allow locking of the console screen in text mode.'
description = 'Installing "screen" ensures a console locking capability is available for users who may need to suspend console logins.'
fixtext = [=[To enable console screen locking when in text mode, install the "screen" package: 

# yum install screen

Instruct users to begin new terminal sessions with the following command: 

$ screen

The console can now be locked with the following key combination: 

ctrl+a x]=]
checktext = [=[Run the following command to determine if the "screen" package is installed: 

# rpm -q screen


If the package is not installed, this is a finding.]=]

function test()
end

function fix()
end
