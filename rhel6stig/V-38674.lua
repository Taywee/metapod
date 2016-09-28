id = 'V-38674'
severity = 'medium'
weight = 10.0
title = 'X Windows must not be enabled unless required.'
description = 'Unnecessary services should be disabled to decrease the attack surface of the system.'
fixtext = [=[Setting the system's runlevel to 3 will prevent automatic startup of the X server. To do so, ensure the following line in "/etc/inittab" features a "3" as shown: 

id:3:initdefault:]=]
checktext = [=[To verify the default runlevel is 3, run the following command: 

# grep initdefault /etc/inittab

The output should show the following: 

id:3:initdefault:


If it does not, this is a finding.]=]

function test()
end

function fix()
end
