id = 'V-38685'
severity = 'low'
weight = 10.0
title = 'Temporary accounts must be provisioned with an expiration date.'
description = 'When temporary accounts are created, there is a risk they may remain in place and active after the need for them no longer exists. Account expiration greatly reduces the risk of accounts being misused or hijacked.'
fixtext = [=[In the event temporary accounts are required, configure the system to terminate them after a documented time period. For every temporary account, run the following command to set an expiration date on it, substituting "[USER]" and "[YYYY-MM-DD]" appropriately: 

# chage -E [YYYY-MM-DD] [USER]

"[YYYY-MM-DD]" indicates the documented expiration date for the account.]=]
checktext = [=[For every temporary account, run the following command to obtain its account aging and expiration information: 

# chage -l [USER]

Verify each of these accounts has an expiration date set as documented. 
If any temporary accounts have no expiration date set or do not expire within a documented time frame, this is a finding.]=]

function test()
end

function fix()
end
