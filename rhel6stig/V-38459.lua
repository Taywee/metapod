id = 'V-38459'
severity = 'medium'
weight = 10.0
title = 'The /etc/group file must be group-owned by root.'
description = 'The "/etc/group" file contains information regarding groups that are configured on the system. Protection of this file is important for system security.'
fixtext = [=[To properly set the group owner of "/etc/group", run the command: 

# chgrp root /etc/group]=]
checktext = [=[To check the group ownership of "/etc/group", run the command: 

$ ls -l /etc/group

If properly configured, the output should indicate the following group-owner. "root" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
