id = 'V-38504'
severity = 'medium'
weight = 10.0
title = 'The /etc/shadow file must have mode 0000.'
description = 'The "/etc/shadow" file contains the list of local system accounts and stores password hashes. Protection of this file is critical for system security. Failure to give ownership of this file to root provides the designated owner with access to sensitive information which could weaken the system security posture.'
fixtext = [=[To properly set the permissions of "/etc/shadow", run the command: 

# chmod 0000 /etc/shadow]=]
checktext = [=[To check the permissions of "/etc/shadow", run the command: 

$ ls -l /etc/shadow

If properly configured, the output should indicate the following permissions: "----------" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
