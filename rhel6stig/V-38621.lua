id = 'V-38621'
severity = 'medium'
weight = 10.0
title = 'The system clock must be synchronized to an authoritative DoD time source.'
description = 'Synchronizing with an NTP server makes it possible to collate system logs from multiple sources or correlate computer events with real time events. Using a trusted NTP server provided by your organization is recommended.'
fixtext = [=[To specify a remote NTP server for time synchronization, edit the file "/etc/ntp.conf". Add or correct the following lines, substituting the IP or hostname of a remote NTP server for ntpserver. 

server [ntpserver]

This instructs the NTP software to contact that remote server to obtain time data.]=]
checktext = [=[A remote NTP server should be configured for time synchronization. To verify one is configured, open the following file. 

/etc/ntp.conf

In the file, there should be a section similar to the following: 

# --- OUR TIMESERVERS -----
server [ntpserver]


If this is not the case, this is a finding.]=]

function test()
end

function fix()
end
