id = 'V-38569'
severity = 'low'
weight = 10.0
title = 'The system must require passwords to contain at least one uppercase alphabetic character.'
description = 'Requiring a minimum number of uppercase characters makes password guessing attacks more difficult by ensuring a larger search space.'
fixtext = 'The pam_cracklib module\'s "ucredit=" parameter controls requirements for usage of uppercase letters in a password. When set to a negative number, any password will be required to contain that many uppercase characters. When set to a positive number, pam_cracklib will grant +1 additional length credit for each uppercase character. Add "ucredit=-1" after pam_cracklib.so to require use of an uppercase character in passwords.'
checktext = [==[To check how many uppercase characters are required in a password, run the following command: 

$ grep pam_cracklib /etc/pam.d/system-auth

The "ucredit" parameter (as a negative number) will indicate how many uppercase characters are required. The DoD requires at least one uppercase character in a password. This would appear as "ucredit=-1". 
If ucredit is not found or not set to the required value, this is a finding.]==]

function test()
end

function fix()
end
