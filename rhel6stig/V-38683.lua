id = 'V-38683'
severity = 'low'
weight = 10.0
title = 'All accounts on the system must have unique user or account names'
description = 'Unique usernames allow for accountability on the system.'
fixtext = 'Change usernames, or delete accounts, so each has a unique name.'
checktext = [=[Run the following command to check for duplicate account names: 

# pwck -rq

If there are no duplicate names, no line will be returned. 
If a line is returned, this is a finding.]=]

function test()
end

function fix()
end
