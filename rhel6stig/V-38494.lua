id = 'V-38494'
severity = 'low'
weight = 10.0
title = 'The system must prevent the root account from logging in from serial consoles.'
description = 'Preventing direct root login to serial port interfaces helps ensure accountability for actions taken on the systems using the root account.'
fixtext = [=[To restrict root logins on serial ports, ensure lines of this form do not appear in "/etc/securetty": 

ttyS0
ttyS1

Note:  Serial port entries are not limited to those listed above.  Any lines starting with "ttyS" followed by numerals should be removed]=]
checktext = [=[To check for serial port entries which permit root login, run the following command: 

# grep '^ttyS[0-9]' /etc/securetty

If any output is returned, then root login over serial ports is permitted. 
If root login over serial ports is permitted, this is a finding.]=]

function test()
end

function fix()
end
