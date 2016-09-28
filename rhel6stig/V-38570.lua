id = 'V-38570'
severity = 'low'
weight = 10.0
title = 'The system must require passwords to contain at least one special character.'
description = 'Requiring a minimum number of special characters makes password guessing attacks more difficult by ensuring a larger search space.'
fixtext = 'The pam_cracklib module\'s "ocredit=" parameter controls requirements for usage of special (or ``other\'\') characters in a password. When set to a negative number, any password will be required to contain that many special characters. When set to a positive number, pam_cracklib will grant +1 additional length credit for each special character. Add "ocredit=-1" after pam_cracklib.so to require use of a special character in passwords.'
checktext = [==[To check how many special characters are required in a password, run the following command: 

$ grep pam_cracklib /etc/pam.d/system-auth

The "ocredit" parameter (as a negative number) will indicate how many special characters are required. The DoD requires at least one special character in a password. This would appear as "ocredit=-1". 
If ocredit is not found or not set to the required value, this is a finding.]==]

function test()
end

function fix()
end
