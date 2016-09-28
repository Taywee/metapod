id = 'V-38603'
severity = 'medium'
weight = 10.0
title = 'The ypserv package must not be installed.'
description = 'Removing the "ypserv" package decreases the risk of the accidental (or intentional) activation of NIS or NIS+ services.'
fixtext = [=[The "ypserv" package can be uninstalled with the following command: 

# yum erase ypserv]=]
checktext = [=[Run the following command to determine if the "ypserv" package is installed: 

# rpm -q ypserv


If the package is installed, this is a finding.]=]

function test()
end

function fix()
end
