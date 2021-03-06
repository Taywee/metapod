id = 'V-38477'
severity = 'medium'
weight = 10.0
title = 'Users must not be able to change passwords more than once every 24 hours.'
description = 'Setting the minimum password age protects against users cycling back to a favorite password after satisfying the password reuse requirement.'
fixtext = [=[To specify password minimum age for new accounts, edit the file "/etc/login.defs" and add or correct the following line, replacing [DAYS] appropriately: 

PASS_MIN_DAYS [DAYS]

A value of 1 day is considered sufficient for many environments. The DoD requirement is 1.]=]
checktext = [=[To check the minimum password age, run the command: 

$ grep PASS_MIN_DAYS /etc/login.defs

The DoD requirement is 1. 
If it is not set to the required value, this is a finding.]=]

function test()
end

function fix()
end
