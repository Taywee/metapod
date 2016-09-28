id = 'V-38443'
severity = 'medium'
weight = 10.0
title = 'The /etc/gshadow file must be owned by root.'
description = 'The "/etc/gshadow" file contains group password hashes. Protection of this file is critical for system security.'
fixtext = [=[To properly set the owner of "/etc/gshadow", run the command: 

# chown root /etc/gshadow]=]
checktext = [=[To check the ownership of "/etc/gshadow", run the command: 

$ ls -l /etc/gshadow

If properly configured, the output should indicate the following owner: "root" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
