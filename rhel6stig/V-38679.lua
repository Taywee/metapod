id = 'V-38679'
severity = 'medium'
weight = 10.0
title = 'The DHCP client must be disabled if not needed.'
description = 'DHCP relies on trusting the local network. If the local network is not trusted, then it should not be used. However, the automatic configuration provided by DHCP is commonly used and the alternative, manual configuration, presents an unacceptable burden in many circumstances.'
fixtext = [==[For each interface [IFACE] on the system (e.g. eth0), edit "/etc/sysconfig/network-scripts/ifcfg-[IFACE]" and make the following changes. 

Correct the BOOTPROTO line to read:

BOOTPROTO=none


Add or correct the following lines, substituting the appropriate values based on your site's addressing scheme:

NETMASK=[local LAN netmask]
IPADDR=[assigned IP address]
GATEWAY=[local LAN default gateway]]==]
checktext = [==[To verify that DHCP is not being used, examine the following file for each interface. 

# /etc/sysconfig/network-scripts/ifcfg-[IFACE]

If there is any network interface without a associated "ifcfg" file, this is a finding.

Look for the following:

BOOTPROTO=none

Also verify the following, substituting the appropriate values based on your site's addressing scheme:

NETMASK=[local LAN netmask]
IPADDR=[assigned IP address]
GATEWAY=[local LAN default gateway]


If it does not, this is a finding.]==]

function test()
end

function fix()
end
