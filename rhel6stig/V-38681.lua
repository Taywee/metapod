id = 'V-38681'
severity = 'low'
weight = 10.0
title = 'All GIDs referenced in /etc/passwd must be defined in /etc/group'
description = 'Inconsistency in GIDs between /etc/passwd and /etc/group could lead to a user having unintended rights.'
fixtext = 'Add a group to the system for each GID referenced without a corresponding group.'
checktext = [=[To ensure all GIDs referenced in /etc/passwd are defined in /etc/group, run the following command: 

# pwck -r | grep 'no group'

There should be no output. 
If there is output, this is a finding.]=]

function test()
end

function fix()
end
