id = 'V-38610'
severity = 'low'
weight = 10.0
title = 'The SSH daemon must set a timeout count on idle sessions.'
description = 'This ensures a user login will be terminated as soon as the "ClientAliveCountMax" is reached.'
fixtext = [=[To ensure the SSH idle timeout occurs precisely when the "ClientAliveCountMax" is set, edit "/etc/ssh/sshd_config" as follows: 

ClientAliveCountMax 0]=]
checktext = [=[To ensure the SSH idle timeout will occur when the "ClientAliveCountMax" is set, run the following command: 

# grep ClientAliveCountMax /etc/ssh/sshd_config

If properly configured, output should be: 

ClientAliveCountMax 0


If it is not, this is a finding.]=]

function test()
end

function fix()
end
