id = 'V-38501'
severity = 'medium'
weight = 10.0
title = 'The system must disable accounts after excessive login failures within a 15-minute interval.'
description = 'Locking out user accounts after a number of incorrect attempts within a specific period of time prevents direct password guessing attacks.'
fixtext = [==[Utilizing "pam_faillock.so", the "fail_interval" directive configures the system to lock out accounts after a number of incorrect logon attempts. Modify the content of both "/etc/pam.d/system-auth" and "/etc/pam.d/password-auth" as follows: 

Add the following line immediately before the "pam_unix.so" statement in the "AUTH" section: 

auth required pam_faillock.so preauth silent deny=3 unlock_time=604800 fail_interval=900

Add the following line immediately after the "pam_unix.so" statement in the "AUTH" section: 

auth [default=die] pam_faillock.so authfail deny=3 unlock_time=604800 fail_interval=900

Add the following line immediately before the "pam_unix.so" statement in the "ACCOUNT" section: 

account required pam_faillock.so

Note that any updates made to "/etc/pam.d/system-auth" and "/etc/pam.d/password-auth" may be overwritten by the "authconfig" program.  The "authconfig" program should not be used.]==]
checktext = [==[To ensure the failed password attempt policy is configured correctly, run the following command:

$ grep pam_faillock /etc/pam.d/system-auth /etc/pam.d/password-auth

For each file, the output should show "fail_interval=<interval-in-seconds>" where "interval-in-seconds" is 900 (15 minutes) or greater. If the "fail_interval" parameter is not set, the default setting of 900 seconds is acceptable. If that is not the case, this is a finding.]==]

function test()
end

function fix()
end
