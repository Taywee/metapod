id = 'V-38479'
severity = 'medium'
weight = 10.0
title = 'User passwords must be changed at least every 60 days.'
description = 'Setting the password maximum age ensures users are required to periodically change their passwords. This could possibly decrease the utility of a stolen password. Requiring shorter password lifetimes increases the risk of users writing down the password in a convenient location subject to physical compromise.'
fixtext = [=[To specify password maximum age for new accounts, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: 

PASS_MAX_DAYS [DAYS]

The DoD requirement is 60.]=]
checktext = [=[To check the maximum password age, run the command: 

$ grep PASS_MAX_DAYS /etc/login.defs

The DoD requirement is 60. 
If it is not set to the required value, this is a finding.]=]

function test()
end

function fix()
end
