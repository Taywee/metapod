id = 'V-38658'
severity = 'medium'
weight = 10.0
title = 'The system must prohibit the reuse of passwords within five iterations.'
description = 'Preventing reuse of previous passwords helps ensure that a compromised password is not reused by a user.'
fixtext = [==[Do not allow users to reuse recent passwords. This can be accomplished by using the "remember" option for the "pam_pwhistory" PAM module. In the file "/etc/pam.d/system-auth", append "remember=5" to the line which refers to the "pam_pwhistory.so" module, as shown: 

password sufficient pam_pwhistory.so [existing_options] remember=5

The DoD requirement is five passwords.   ]==]
checktext = [==[To verify the password reuse setting is compliant, run the following command: 

# grep remember /etc/pam.d/system-auth

The output must be a line beginning with "password sufficient pam_pwhistory.so" and ending with "remember=5".

If the line is commented out, the line does not contain the specified elements, or the value for "remember" is less than 5, this is a finding.]==]

function test()
end

function fix()
end
