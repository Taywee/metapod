id = 'V-38450'
severity = 'medium'
weight = 10.0
title = 'The /etc/passwd file must be owned by root.'
description = 'The "/etc/passwd" file contains information about the users that are configured on the system. Protection of this file is critical for system security.'
fixtext = [=[To properly set the owner of "/etc/passwd", run the command: 

# chown root /etc/passwd]=]
checktext = [=[To check the ownership of "/etc/passwd", run the command: 

$ ls -l /etc/passwd

If properly configured, the output should indicate the following owner: "root" 
If it does not, this is a finding.]=]

function test()
end

function fix()
end
