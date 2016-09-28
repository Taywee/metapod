id = 'V-38475'
severity = 'medium'
weight = 10.0
title = 'The system must require passwords to contain a minimum of 15 characters.'
description = [=[Requiring a minimum password length makes password cracking attacks more difficult by ensuring a larger search space. However, any security benefit from an onerous requirement must be carefully weighed against usability problems, support costs, or counterproductive behavior that may result.

While it does not negate the password length requirement, it is preferable to migrate from a password-based authentication scheme to a stronger one based on PKI (public key infrastructure).]=]
fixtext = [=[To specify password length requirements for new accounts, edit the file "/etc/login.defs" and add or correct the following lines: 

PASS_MIN_LEN 15

The DoD requirement is "15". If a program consults "/etc/login.defs" and also another PAM module (such as "pam_cracklib") during a password change operation, then the most restrictive must be satisfied.]=]
checktext = [=[To check the minimum password length, run the command: 

$ grep PASS_MIN_LEN /etc/login.defs

The DoD requirement is "15". 
If it is not set to the required value, this is a finding.]=]

function test()
end

function fix()
end
