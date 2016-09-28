id = 'V-38577'
severity = 'medium'
weight = 10.0
title = 'The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (libuser.conf).'
description = 'Using a stronger hashing algorithm makes password cracking attacks more difficult.'
fixtext = [==[In "/etc/libuser.conf", add or correct the following line in its "[defaults]" section to ensure the system will use the SHA-512 algorithm for password hashing: 

crypt_style = sha512]==]
checktext = [==[Inspect "/etc/libuser.conf" and ensure the following line appears in the "[default]" section: 

crypt_style = sha512


If it does not, this is a finding.]==]

function test()
end

function fix()
end
