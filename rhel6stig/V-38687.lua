id = 'V-38687'
severity = 'low'
weight = 10.0
title = 'The system must provide VPN connectivity for communications over untrusted networks.'
description = 'Providing the ability for remote users or systems to initiate a secure VPN connection protects information when it is transmitted over a wide area network.'
fixtext = [=[The Openswan package provides an implementation of IPsec and IKE, which permits the creation of secure tunnels over untrusted networks. The "openswan" package can be installed with the following command: 

# yum install openswan]=]
checktext = [=[If the system does not communicate over untrusted networks, this is not applicable.

Run the following command to determine if the "openswan" package is installed: 

# rpm -q openswan


If the package is not installed, this is a finding.]=]

function test()
end

function fix()
end
