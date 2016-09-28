id = 'V-38448'
severity = 'medium'
weight = 10.0
title = 'The /etc/gshadow file must be group-owned by root.'
description = 'The "/etc/gshadow" file contains group password hashes. Protection of this file is critical for system security.'
fixtext = [=[To properly set the group owner of "/etc/gshadow", run the command: 

# chgrp root /etc/gshadow]=]
checktext = [=[To check the group ownership of "/etc/gshadow", run the command: 

$ ls -l /etc/gshadow

If properly configured, the output should indicate the following group-owner. "root" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
