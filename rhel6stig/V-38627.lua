id = 'V-38627'
severity = 'low'
weight = 10.0
title = 'The openldap-servers package must not be installed unless required.'
description = 'Unnecessary packages should not be installed to decrease the attack surface of the system.'
fixtext = [=[The "openldap-servers" package should be removed if not in use. Is this machine the OpenLDAP server? If not, remove the package. 

# yum erase openldap-servers

The openldap-servers RPM is not installed by default on RHEL6 machines. It is needed only by the OpenLDAP server, not by the clients which use LDAP for authentication. If the system is not intended for use as an LDAP Server it should be removed.]=]
checktext = [=[To verify the "openldap-servers" package is not installed, run the following command: 

$ rpm -q openldap-servers

The output should show the following. 

package openldap-servers is not installed


If it does not, this is a finding.]=]

function test()
end

function fix()
end
