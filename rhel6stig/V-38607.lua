id = 'V-38607'
severity = 'high'
weight = 10.0
title = 'The SSH daemon must be configured to use only the SSHv2 protocol.'
description = 'SSH protocol version 1 suffers from design flaws that result in security vulnerabilities and should not be used.'
fixtext = [=[Only SSH protocol version 2 connections should be permitted. The default setting in "/etc/ssh/sshd_config" is correct, and can be verified by ensuring that the following line appears: 

Protocol 2]=]
checktext = [=[To check which SSH protocol version is allowed, run the following command: 

# grep Protocol /etc/ssh/sshd_config

If configured properly, output should be 

Protocol 2


If it is not, this is a finding.]=]

function test()
end

function fix()
end
