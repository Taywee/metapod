id = 'V-38653'
severity = 'high'
weight = 10.0
title = 'The snmpd service must not use a default password.'
description = 'Presence of the default SNMP password enables querying of different system aspects and could result in unauthorized knowledge of the system.'
fixtext = [=[Edit "/etc/snmp/snmpd.conf", remove default community string "public". Upon doing that, restart the SNMP service: 

# service snmpd restart]=]
checktext = [=[To ensure the default password is not set, run the following command: 

# grep -v "^#" /etc/snmp/snmpd.conf| grep public

There should be no output. 
If there is output, this is a finding.]=]

function test()
end

function fix()
end
