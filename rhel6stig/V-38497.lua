id = 'V-38497'
severity = 'high'
weight = 10.0
title = 'The system must not have accounts configured with blank or null passwords.'
description = 'If an account has an empty password, anyone could log in and run commands with the privileges of that account. Accounts with empty passwords should never be used in operational environments.'
fixtext = 'If an account is configured for password authentication but does not have an assigned password, it may be possible to log onto the account without authentication. Remove any instances of the "nullok" option in "/etc/pam.d/system-auth" to prevent logons with empty passwords.'
checktext = [=[To verify that null passwords cannot be used, run the following command: 

# grep nullok /etc/pam.d/system-auth

If this produces any output, it may be possible to log into accounts with empty passwords. 
If NULL passwords can be used, this is a finding.]=]

function test()
end

function fix()
end
