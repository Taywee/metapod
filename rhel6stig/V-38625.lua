id = 'V-38625'
severity = 'medium'
weight = 10.0
title = 'If the system is using LDAP for authentication or account information, the system must use a TLS connection using FIPS 140-2 approved cryptographic algorithms.'
description = 'The LDAP server will use unencrypted connections by default. If the LDAP daemon is not configured to use” ldaps:///”, all communications between the client and the server will not be encrypted. The LDAP server should be configured to use “ldaps:///” over the default “ldap:///”.'
fixtext = 'Configure the LDAP server to enforce TLS use.'
checktext = [=[If the system does not use LDAP for authentication or account information, this is not applicable.

To ensure LDAP is configured to use TLS for all transactions, run the following command: 

# ps –ef | grep “slapd”

If the LDAP daemon is not using “ldaps:///”, this is a finding.

If the LDAP daemon is using “ldap:///”, this is a finding.

Verify that the LDAP client cannot connect using an unencrypted method.
# openssl s_client –connect [HOST]:389 

If the following line is not returned, this is a finding:
Socket: Connection refused.

Note: The default port for unencrypted LDAP connections is 389.]=]

function test()
end

function fix()
end
