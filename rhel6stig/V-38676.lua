id = 'V-38676'
severity = 'low'
weight = 10.0
title = 'The xorg-x11-server-common (X Windows) package must not be installed, unless required.'
description = 'Unnecessary packages should not be installed to decrease the attack surface of the system.'
fixtext = [=[Removing all packages which constitute the X Window System ensures users or malicious software cannot start X. To do so, run the following command: 

# yum groupremove "X Window System"]=]
checktext = [=[To ensure the X Windows package group is removed, run the following command: 

$ rpm -qi xorg-x11-server-common

The output should be: 

package xorg-x11-server-common is not installed


If it is not, this is a finding.]=]

function test()
end

function fix()
end
