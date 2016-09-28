id = 'V-38587'
severity = 'high'
weight = 10.0
title = 'The telnet-server package must not be installed.'
description = [=[Removing the "telnet-server" package decreases the risk of the unencrypted telnet service's accidental (or intentional) activation.

Mitigation:  If the telnet-server package is configured to only allow encrypted sessions, such as with Kerberos or the use of encrypted network tunnels, the risk of exposing sensitive information is mitigated.]=]
fixtext = [=[The "telnet-server" package can be uninstalled with the following command: 

# yum erase telnet-server]=]
checktext = [=[Run the following command to determine if the "telnet-server" package is installed: 

# rpm -q telnet-server


If the package is installed, this is a finding.]=]

function test()
end

function fix()
end
