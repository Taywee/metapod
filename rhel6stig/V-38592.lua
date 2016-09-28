id = 'V-38592'
severity = 'medium'
weight = 10.0
title = 'The system must require administrator action to unlock an account locked by excessive failed login attempts.'
description = 'Locking out user accounts after a number of incorrect attempts prevents direct password guessing attacks. Ensuring that an administrator is involved in unlocking locked accounts draws appropriate attention to such situations.'
fixtext = [==[To configure the system to lock out accounts after a number of incorrect logon attempts and require an administrator to unlock the account using "pam_faillock.so", modify the content of both "/etc/pam.d/system-auth" and "/etc/pam.d/password-auth" as follows: 

Add the following line immediately before the "pam_unix.so" statement in the "AUTH" section: 

auth required pam_faillock.so preauth silent deny=3 unlock_time=604800 fail_interval=900

Add the following line immediately after the "pam_unix.so" statement in the "AUTH" section: 

auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900

Add the following line immediately before the "pam_unix.so" statement in the "ACCOUNT" section: 

account required pam_faillock.so

Note that any updates made to "/etc/pam.d/system-auth" and "/etc/pam.d/password-auth" may be overwritten by the "authconfig" program.  The "authconfig" program should not be used.]==]
checktext = [==[To ensure the failed password attempt policy is configured correctly, run the following command: 

# grep pam_faillock /etc/pam.d/system-auth /etc/pam.d/password-auth

The output should show "unlock_time=<some-large-number>"; the largest acceptable value is 604800 seconds (one week). 
If that is not the case, this is a finding.]==]

function test()
end

function fix()
end
