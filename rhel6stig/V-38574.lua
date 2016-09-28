id = 'V-38574'
severity = 'medium'
weight = 10.0
title = 'The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (system-auth).'
description = 'Using a stronger hashing algorithm makes password cracking attacks more difficult.'
fixtext = [=[In "/etc/pam.d/system-auth" and "/etc/pam.d/system-auth-ac", among potentially other files, the "password" section of the files control which PAM modules execute during a password change. Set the "pam_unix.so" module in the "password" section to include the argument "sha512", as shown below: 

password sufficient pam_unix.so sha512 [other arguments...]

This will help ensure when local users change their passwords, hashes for the new passwords will be generated using the SHA-512 algorithm. This is the default.

Note that any updates made to "/etc/pam.d/system-auth" will be overwritten by the "authconfig" program.  The "authconfig" program should not be used.]=]
checktext = [=[Inspect the "password" section of "/etc/pam.d/system-auth", "/etc/pam.d/system-auth-ac", and other files in "/etc/pam.d" and ensure that the "pam_unix.so" module includes the argument "sha512".

$ grep password /etc/pam.d/* | grep pam_unix.so | grep sha512

If it does not, this is a finding.]=]

function test()
end

function fix()
end
