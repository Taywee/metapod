id = 'V-38461'
severity = 'medium'
weight = 10.0
title = 'The /etc/group file must have mode 0644 or less permissive.'
description = 'The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.'
fixtext = [=[To properly set the permissions of "/etc/group", run the command: 

# chmod 644 /etc/group]=]
checktext = [=[To check the permissions of "/etc/group", run the command: 

$ ls -l /etc/group

If properly configured, the output should indicate the following permissions: "-rw-r--r--" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
