id = 'V-38657'
severity = 'low'
weight = 10.0
title = 'The system must use SMB client signing for connecting to samba servers using mount.cifs.'
description = 'Packet signing can prevent man-in-the-middle attacks which modify SMB packets in transit.'
fixtext = [==[Require packet signing of clients who mount Samba shares using the "mount.cifs" program (e.g., those who specify shares in "/etc/fstab"). To do so, ensure signing options (either "sec=krb5i" or "sec=ntlmv2i") are used. 

See the "mount.cifs(8)" man page for more information. A Samba client should only communicate with servers who can support SMB packet signing.]==]
checktext = [=[If Samba is not in use, this is not applicable.

To verify that Samba clients using mount.cifs must use packet signing, run the following command: 

# grep sec /etc/fstab /etc/mtab

The output should show either "krb5i" or "ntlmv2i" in use. 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
