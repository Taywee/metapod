id = 'V-38499'
severity = 'medium'
weight = 10.0
title = 'The /etc/passwd file must not contain password hashes.'
description = 'The hashes for all user account passwords should be stored in the file "/etc/shadow" and never in "/etc/passwd", which is readable by all users.'
fixtext = 'If any password hashes are stored in "/etc/passwd" (in the second field, instead of an "x"), the cause of this misconfiguration should be investigated. The account should have its password reset and the hash should be properly stored, or the account should be deleted entirely.'
checktext = [==[To check that no password hashes are stored in "/etc/passwd", run the following command: 

# awk -F: '($2 != "x") {print}' /etc/passwd

If it produces any output, then a password hash is stored in "/etc/passwd". 
If any stored hashes are found in /etc/passwd, this is a finding.]==]

function test()
end

function fix()
end
