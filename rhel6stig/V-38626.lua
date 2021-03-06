id = 'V-38626'
severity = 'medium'
weight = 10.0
title = 'The LDAP client must use a TLS connection using trust certificates signed by the site CA.'
description = 'The tls_cacertdir or tls_cacertfile directives are required when tls_checkpeer is configured (which is the default for openldap versions 2.1 and up). These directives define the path to the trust certificates signed by the site CA.'
fixtext = [=[Ensure a copy of the site's CA certificate has been placed in the file "/etc/pki/tls/CA/cacert.pem". Configure LDAP to enforce TLS use and to trust certificates signed by the site's CA. First, edit the file "/etc/pam_ldap.conf", and add or correct either of the following lines: 

tls_cacertdir /etc/pki/tls/CA

or 

tls_cacertfile /etc/pki/tls/CA/cacert.pem

Then review the LDAP server and ensure TLS has been configured.]=]
checktext = [=[If the system does not use LDAP for authentication or account information, this is not applicable.

To ensure TLS is configured with trust certificates, run the following command: 

# grep cert /etc/pam_ldap.conf


If there is no output, or the lines are commented out, this is a finding.]=]

function test()
end

function fix()
end
