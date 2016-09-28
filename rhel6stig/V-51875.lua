id = 'V-51875'
severity = 'medium'
weight = 10.0
title = 'The operating system, upon successful logon/access, must display to the user the number of unsuccessful logon/access attempts since the last successful logon/access.'
description = 'Users need to be aware of activity that occurs regarding their account. Providing users with information regarding the number of unsuccessful attempts that were made to login to their account allows the user to determine if any unauthorized activity has occurred and gives them an opportunity to notify administrators. '
fixtext = [=[To configure the system to notify users of last logon/access using "pam_lastlog", add the following line immediately after "session required pam_limits.so":

session required pam_lastlog.so showfailed]=]
checktext = [=[To ensure that last logon/access notification is configured correctly, run the following command:

# grep pam_lastlog.so /etc/pam.d/system-auth

The output should show output "showfailed". If that is not the case, this is a finding.]=]

function test()
end

function fix()
end
