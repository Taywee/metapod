id = 'V-38572'
severity = 'low'
weight = 10.0
title = 'The system must require at least eight characters be changed between the old and new passwords during a password change.'
description = 'Requiring a minimum number of different characters during password changes ensures that newly changed passwords should not resemble previously compromised ones. Note that passwords which are changed on compromised systems will still be compromised, however.'
fixtext = 'The pam_cracklib module\'s "difok" parameter controls requirements for usage of different characters during a password change. Add "difok=[NUM]" after pam_cracklib.so to require differing characters when changing passwords, substituting [NUM] appropriately. The DoD requirement is 8.'
checktext = [==[To check how many characters must differ during a password change, run the following command: 

$ grep pam_cracklib /etc/pam.d/system-auth

The "difok" parameter will indicate how many characters must differ. The DoD requires eight characters differ during a password change. This would appear as "difok=8". 

If difok is not found or not set to the required value, this is a finding.]==]

function test()
end

function fix()
end
