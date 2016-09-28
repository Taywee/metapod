id = 'V-38496'
severity = 'medium'
weight = 10.0
title = 'Default operating system accounts, other than root, must be locked.'
description = 'Disabling authentication for default system accounts makes it more difficult for attackers to make use of them to compromise a system.'
fixtext = [=[Some accounts are not associated with a human user of the system, and exist to perform some administrative function. An attacker should not be able to log into these accounts. 

Disable logon access to these accounts with the command: 

# passwd -l [SYSACCT]]=]
checktext = [=[To obtain a listing of all users and the contents of their shadow password field, run the command: 

$ awk -F: '$1 !~ /^root$/ && $2 !~ /^[!*]/ {print $1 ":" $2}' /etc/shadow

Identify the operating system accounts from this listing. These will primarily be the accounts with UID numbers less than 500, other than root. 

If any default operating system account (other than root) has a valid password hash, this is a finding.]=]

function test()
end

function fix()
end
