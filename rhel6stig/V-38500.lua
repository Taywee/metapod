id = 'V-38500'
severity = 'medium'
weight = 10.0
title = 'The root account must be the only account having a UID of 0.'
description = 'An account has root authority if it has a UID of 0. Multiple accounts with a UID of 0 afford more opportunity for potential intruders to guess a password for a privileged account. Proper configuration of sudo is recommended to afford multiple system administrators access to root privileges in an accountable manner.'
fixtext = 'If any account other than root has a UID of 0, this misconfiguration should be investigated and the accounts other than root should be removed or have their UID changed.'
checktext = [===[To list all password file entries for accounts with UID 0, run the following command: 

# awk -F: '($3 == 0) {print}' /etc/passwd

This should print only one line, for the user root. 
If any account other than root has a UID of 0, this is a finding.]===]

function test()
end

function fix()
end
