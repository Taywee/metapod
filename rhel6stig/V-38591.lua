id = 'V-38591'
severity = 'high'
weight = 10.0
title = 'The rsh-server package must not be installed.'
description = 'The "rsh-server" package provides several obsolete and insecure network services. Removing it decreases the risk of those services\' accidental (or intentional) activation.'
fixtext = [=[The "rsh-server" package can be uninstalled with the following command: 

# yum erase rsh-server]=]
checktext = [=[Run the following command to determine if the "rsh-server" package is installed: 

# rpm -q rsh-server


If the package is installed, this is a finding.]=]

function test()
end

function fix()
end
