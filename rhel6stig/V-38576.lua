id = 'V-38576'
severity = 'medium'
weight = 10.0
title = 'The system must use a FIPS 140-2 approved cryptographic hashing algorithm for generating account password hashes (login.defs).'
description = 'Using a stronger hashing algorithm makes password cracking attacks more difficult.'
fixtext = [=[In "/etc/login.defs", add or correct the following line to ensure the system will use SHA-512 as the hashing algorithm: 

ENCRYPT_METHOD SHA512]=]
checktext = [=[Inspect "/etc/login.defs" and ensure the following line appears: 

ENCRYPT_METHOD SHA512


If it does not, this is a finding.]=]

function test()
end

function fix()
end
