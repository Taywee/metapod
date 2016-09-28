id = 'V-38449'
severity = 'medium'
weight = 10.0
title = 'The /etc/gshadow file must have mode 0000.'
description = 'The /etc/gshadow file contains group password hashes. Protection of this file is critical for system security.'
fixtext = [=[To properly set the permissions of "/etc/gshadow", run the command: 

# chmod 0000 /etc/gshadow]=]
checktext = [=[To check the permissions of "/etc/gshadow", run the command: 

$ ls -l /etc/gshadow

If properly configured, the output should indicate the following permissions: "----------" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
