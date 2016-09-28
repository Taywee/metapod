id = 'V-38660'
severity = 'medium'
weight = 10.0
title = 'The snmpd service must use only SNMP protocol version 3 or newer.'
description = [=[Earlier versions of SNMP are considered insecure, as they potentially allow unauthorized access to detailed system management information.
]=]
fixtext = [=[Edit "/etc/snmp/snmpd.conf", removing any references to "v1", "v2c", or "com2sec". Upon doing that, restart the SNMP service: 

# service snmpd restart]=]
checktext = [=[To ensure only SNMPv3 or newer is used, run the following command: 

# grep 'v1\|v2c\|com2sec' /etc/snmp/snmpd.conf | grep -v '^#'

There should be no output. 
If there is output, this is a finding.]=]

function test()
end

function fix()
end
