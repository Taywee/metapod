id = 'V-38617'
severity = 'medium'
weight = 10.0
title = 'The SSH daemon must be configured to use only FIPS 140-2 approved ciphers.'
description = 'Approved algorithms should impart some level of confidence in their implementation. These are also required for compliance.'
fixtext = [=[Limit the ciphers to those algorithms which are FIPS-approved. Counter (CTR) mode is also preferred over cipher-block chaining (CBC) mode. The following line in "/etc/ssh/sshd_config" demonstrates use of FIPS-approved ciphers: 

Ciphers aes128-ctr,aes192-ctr,aes256-ctr,aes128-cbc,3des-cbc,aes192-cbc,aes256-cbc

The man page "sshd_config(5)" contains a list of supported ciphers.]=]
checktext = [=[Only FIPS-approved ciphers should be used. To verify that only FIPS-approved ciphers are in use, run the following command: 

# grep Ciphers /etc/ssh/sshd_config

The output should contain only those ciphers which are FIPS-approved, namely, the AES and 3DES ciphers. 
If that is not the case, this is a finding.]=]

function test()
end

function fix()
end
