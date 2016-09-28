id = 'V-38614'
severity = 'high'
weight = 10.0
title = 'The SSH daemon must not allow authentication using an empty password.'
description = 'Configuring this setting for the SSH daemon provides additional assurance that remote login via SSH will require a password, even in the event of misconfiguration elsewhere.'
fixtext = [=[To explicitly disallow remote login from accounts with empty passwords, add or correct the following line in "/etc/ssh/sshd_config": 

PermitEmptyPasswords no

Any accounts with empty passwords should be disabled immediately, and PAM configuration should prevent users from being able to assign themselves empty passwords.]=]
checktext = [=[To determine how the SSH daemon's "PermitEmptyPasswords" option is set, run the following command: 

# grep -i PermitEmptyPasswords /etc/ssh/sshd_config

If no line, a commented line, or a line indicating the value "no" is returned, then the required value is set. 
If the required value is not set, this is a finding.]=]

function test()
end

function fix()
end
