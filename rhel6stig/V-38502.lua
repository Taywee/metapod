id = 'V-38502'
severity = 'medium'
weight = 10.0
title = 'The /etc/shadow file must be owned by root.'
description = 'The "/etc/shadow" file contains the list of local system accounts and stores password hashes. Protection of this file is critical for system security. Failure to give ownership of this file to root provides the designated owner with access to sensitive information which could weaken the system security posture.'
fixtext = [=[To properly set the owner of "/etc/shadow", run the command: 

# chown root /etc/shadow]=]
checktext = [=[To check the ownership of "/etc/shadow", run the command: 

$ ls -l /etc/shadow

If properly configured, the output should indicate the following owner: "root" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
