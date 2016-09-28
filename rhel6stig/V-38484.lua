id = 'V-38484'
severity = 'medium'
weight = 10.0
title = 'The operating system, upon successful logon, must display to the user the date and time of the last logon or access via ssh.'
description = [=[Users need to be aware of activity that occurs regarding their account. Providing users with information regarding the date and time of their last successful login allows the user to determine if any unauthorized activity has occurred and gives them an opportunity to notify administrators.

At ssh login, a user must be presented with the last successful login date and time.]=]
fixtext = [=[Update the "PrintLastLog" keyword to "yes" in /etc/ssh/sshd_config:

PrintLastLog yes

While it is acceptable to remove the keyword entirely since the default action for the SSH daemon is to print the last logon date and time, it is preferred to have the value explicitly documented.]=]
checktext = [=[Verify the value associated with the "PrintLastLog" keyword in /etc/ssh/sshd_config:

# grep -i "^PrintLastLog" /etc/ssh/sshd_config

If the "PrintLastLog" keyword is not present, this is not a finding.  If the value is not set to "yes", this is a finding.]=]

function test()
end

function fix()
end
