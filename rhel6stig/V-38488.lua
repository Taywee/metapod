id = 'V-38488'
severity = 'medium'
weight = 10.0
title = 'The operating system must conduct backups of user-level information contained in the operating system per organization defined frequency to conduct backups consistent with recovery time and recovery point objectives.'
description = 'Operating system backup is a critical step in maintaining data assurance and availability. User-level information is data generated by information system and/or application users. Backups shall be consistent with organizational recovery time and recovery point objectives.'
fixtext = [=[Procedures to back up user data from the system must be established and executed. The Red Hat operating system provides utilities for automating such a process.  Commercial and open-source products are also available.

Implement a process whereby user data is backed up from the system in accordance with local policies.]=]
checktext = [=[Ask an administrator if a process exists to back up user data from the system. 

If such a process does not exist, this is a finding.]=]

function test()
end

function fix()
end
