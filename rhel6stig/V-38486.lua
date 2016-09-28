id = 'V-38486'
severity = 'medium'
weight = 10.0
title = 'The operating system must conduct backups of system-level information contained in the information system per organization defined frequency to conduct backups that are consistent with recovery time and recovery point objectives.'
description = 'Operating system backup is a critical step in maintaining data assurance and availability. System-level information includes system-state information, operating system and application software, and licenses. Backups must be consistent with organizational recovery time and recovery point objectives.'
fixtext = [=[Procedures to back up OS data from the system must be established and executed. The Red Hat operating system provides utilities for automating such a process.  Commercial and open-source products are also available.

Implement a process whereby OS data is backed up from the system in accordance with local policies.]=]
checktext = [=[Ask an administrator if a process exists to back up OS data from the system, including configuration data. 

If such a process does not exist, this is a finding.]=]

function test()
end

function fix()
end
