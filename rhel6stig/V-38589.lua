id = 'V-38589'
severity = 'high'
weight = 10.0
title = 'The telnet daemon must not be running.'
description = [=[The telnet protocol uses unencrypted network communication, which means that data from the login session, including passwords and all other information transmitted during the session, can be stolen by eavesdroppers on the network. The telnet protocol is also subject to man-in-the-middle attacks.

Mitigation:  If an enabled telnet daemon is configured to only allow encrypted sessions, such as with Kerberos or the use of encrypted network tunnels, the risk of exposing sensitive information is mitigated.]=]
fixtext = [=[The "telnet" service can be disabled with the following command: 

# chkconfig telnet off]=]
checktext = [=[To check that the "telnet" service is disabled in system boot configuration, run the following command: 

# chkconfig "telnet" --list

Output should indicate the "telnet" service has either not been installed, or has been disabled, as shown in the example below:

# chkconfig "telnet" --list
telnet         off
OR
error reading information on service telnet: No such file or directory


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
