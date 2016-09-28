id = 'V-38693'
severity = 'low'
weight = 10.0
title = 'The system must require passwords to contain no more than three consecutive repeating characters.'
description = 'Passwords with excessive repeating characters may be more vulnerable to password-guessing attacks.'
fixtext = [==[The pam_cracklib module's "maxrepeat" parameter controls requirements for consecutive repeating characters. When set to a positive number, it will reject passwords which contain more than that number of consecutive characters. Add "maxrepeat=3" after pam_cracklib.so to prevent a run of (3 + 1) or more identical characters. 

password required pam_cracklib.so maxrepeat=3 ]==]
checktext = [=[To check the maximum value for consecutive repeating characters, run the following command: 

$ grep pam_cracklib /etc/pam.d/system-auth

Look for the value of the "maxrepeat" parameter. The DoD requirement is 3. 
If maxrepeat is not found or not set to the required value, this is a finding.]=]

function test()
end

function fix()
end
