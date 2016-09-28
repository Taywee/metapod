id = 'V-38480'
severity = 'low'
weight = 10.0
title = 'Users must be warned 7 days in advance of password expiration.'
description = 'Setting the password warning age enables users to make the change at a practical time.'
fixtext = [=[To specify how many days prior to password expiration that a warning will be issued to users, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: 

PASS_WARN_AGE [DAYS]

The DoD requirement is 7.]=]
checktext = [=[To check the password warning age, run the command: 

$ grep PASS_WARN_AGE /etc/login.defs

The DoD requirement is 7. 
If it is not set to the required value, this is a finding.]=]

function test()
end

function fix()
end
