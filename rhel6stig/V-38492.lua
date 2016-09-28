id = 'V-38492'
severity = 'medium'
weight = 10.0
title = 'The system must prevent the root account from logging in from virtual consoles.'
description = 'Preventing direct root login to virtual console devices helps ensure accountability for actions taken on the system using the root account. '
fixtext = [=[To restrict root logins through the (deprecated) virtual console devices, ensure lines of this form do not appear in "/etc/securetty": 

vc/1
vc/2
vc/3
vc/4

Note:  Virtual console entries are not limited to those listed above.  Any lines starting with "vc/" followed by numerals should be removed.]=]
checktext = [=[To check for virtual console entries which permit root login, run the following command: 

# grep '^vc/[0-9]' /etc/securetty

If any output is returned, then root logins over virtual console devices is permitted. 
If root login over virtual console devices is permitted, this is a finding.]=]

function test()
end

function fix()
end
