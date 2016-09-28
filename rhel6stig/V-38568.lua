id = 'V-38568'
severity = 'low'
weight = 10.0
title = 'The audit system must be configured to audit successful file system mounts.'
description = 'The unauthorized exportation of data to external media could result in an information leak where classified information, Privacy Act information, and intellectual property could be lost. An audit trail should be created each time a filesystem is mounted to help identify and guard against information loss.'
fixtext = [==[At a minimum, the audit system should collect media exportation events for all users and root. Add the following to "/etc/audit/audit.rules", setting ARCH to either b32 or b64 as appropriate for your system: 

-a always,exit -F arch=ARCH -S mount -F auid>=500 -F auid!=4294967295 -k export
-a always,exit -F arch=ARCH -S mount -F auid=0 -k export]==]
checktext = [=[To verify that auditing is configured for all media exportation events, run the following command: 

$ sudo grep -w "mount" /etc/audit/audit.rules

If the system is configured to audit this activity, it will return several lines. 

If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
