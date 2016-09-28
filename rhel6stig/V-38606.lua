id = 'V-38606'
severity = 'medium'
weight = 10.0
title = 'The tftp-server package must not be installed unless required.'
description = 'Removing the "tftp-server" package decreases the risk of the accidental (or intentional) activation of tftp services.'
fixtext = [=[The "tftp-server" package can be removed with the following command: 

# yum erase tftp-server]=]
checktext = [=[Run the following command to determine if the "tftp-server" package is installed: 

# rpm -q tftp-server


If the package is installed, this is a finding.]=]

function test()
end

function fix()
end
