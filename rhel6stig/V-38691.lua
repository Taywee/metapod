id = 'V-38691'
severity = 'medium'
weight = 10.0
title = 'The Bluetooth service must be disabled.'
description = 'Disabling the "bluetooth" service prevents the system from attempting connections to Bluetooth devices, which entails some security risk. Nevertheless, variation in this risk decision may be expected due to the utility of Bluetooth connectivity and its limited range.'
fixtext = [=[The "bluetooth" service can be disabled with the following command: 

# chkconfig bluetooth off



# service bluetooth stop]=]
checktext = [=[To check that the "bluetooth" service is disabled in system boot configuration, run the following command: 

# chkconfig "bluetooth" --list

Output should indicate the "bluetooth" service has either not been installed or has been disabled at all runlevels, as shown in the example below: 

# chkconfig "bluetooth" --list
"bluetooth" 0:off 1:off 2:off 3:off 4:off 5:off 6:off


If the service is configured to run, this is a finding.]=]

function test()
end

function fix()
end
