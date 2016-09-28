id = 'V-38503'
severity = 'medium'
weight = 10.0
title = 'The /etc/shadow file must be group-owned by root.'
description = 'The "/etc/shadow" file stores password hashes. Protection of this file is critical for system security.'
fixtext = [=[To properly set the group owner of "/etc/shadow", run the command: 

# chgrp root /etc/shadow]=]
checktext = [=[To check the group ownership of "/etc/shadow", run the command: 

$ ls -l /etc/shadow

If properly configured, the output should indicate the following group-owner. "root" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
