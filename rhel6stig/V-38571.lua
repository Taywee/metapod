id = 'V-38571'
severity = 'low'
weight = 10.0
title = 'The system must require passwords to contain at least one lower-case alphabetic character.'
description = 'Requiring a minimum number of lower-case characters makes password guessing attacks more difficult by ensuring a larger search space.'
fixtext = 'The pam_cracklib module\'s "lcredit=" parameter controls requirements for usage of lower-case letters in a password. When set to a negative number, any password will be required to contain that many lower-case characters. Add "lcredit=-1" after pam_cracklib.so to require use of a lower-case character in passwords.'
checktext = [==[To check how many lower-case characters are required in a password, run the following command: 

$ grep pam_cracklib /etc/pam.d/system-auth

The "lcredit" parameter (as a negative number) will indicate how many lower-case characters are required. The DoD requires at least one lower-case character in a password. This would appear as "lcredit=-1". 

If lcredit is not found or not set to the required value, this is a finding.]==]

function test()
end

function fix()
end
