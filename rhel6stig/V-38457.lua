id = 'V-38457'
severity = 'medium'
weight = 10.0
title = 'The /etc/passwd file must have mode 0644 or less permissive.'
description = 'If the "/etc/passwd" file is writable by a group-owner or the world the risk of its compromise is increased. The file contains the list of accounts on the system and associated information, and protection of this file is critical for system security.'
fixtext = [=[To properly set the permissions of "/etc/passwd", run the command: 

# chmod 0644 /etc/passwd]=]
checktext = [=[To check the permissions of "/etc/passwd", run the command: 

$ ls -l /etc/passwd

If properly configured, the output should indicate the following permissions: "-rw-r--r--" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
