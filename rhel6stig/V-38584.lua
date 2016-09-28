id = 'V-38584'
severity = 'low'
weight = 10.0
title = 'The xinetd service must be uninstalled if no network services utilizing it are enabled.'
description = 'Removing the "xinetd" package decreases the risk of the xinetd service\'s accidental (or intentional) activation.'
fixtext = [=[The "xinetd" package can be uninstalled with the following command: 

# yum erase xinetd]=]
checktext = [=[If network services are using the xinetd service, this is not applicable.

Run the following command to determine if the "xinetd" package is installed: 

# rpm -q xinetd


If the package is installed, this is a finding.]=]

function test()
end

function fix()
end
