id = 'V-38656'
severity = 'low'
weight = 10.0
title = 'The system must use SMB client signing for connecting to samba servers using smbclient.'
description = 'Packet signing can prevent man-in-the-middle attacks which modify SMB packets in transit.'
fixtext = [==[To require samba clients running "smbclient" to use packet signing, add the following to the "[global]" section of the Samba configuration file in "/etc/samba/smb.conf": 

client signing = mandatory

Requiring samba clients such as "smbclient" to use packet signing ensures they can only communicate with servers that support packet signing.]==]
checktext = [==[To verify that Samba clients running smbclient must use packet signing, run the following command: 

# grep signing /etc/samba/smb.conf

The output should show: 

client signing = mandatory


If it is not, this is a finding.]==]

function test()
end

function fix()
end
