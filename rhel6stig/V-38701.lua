id = 'V-38701'
severity = 'high'
weight = 10.0
title = 'The TFTP daemon must operate in secure mode which provides access only to a single directory on the host file system.'
description = 'Using the "-s" option causes the TFTP service to only serve files from the given directory. Serving files from an intentionally specified directory reduces the risk of sharing files which should remain private.'
fixtext = [==[If running the "tftp" service is necessary, it should be configured to change its root directory at startup. To do so, ensure "/etc/xinetd.d/tftp" includes "-s" as a command line argument, as shown in the following example (which is also the default): 

server_args = -s /var/lib/tftpboot]==]
checktext = [==[Verify "tftp" is configured by with the "-s" option by running the following command: 

grep "server_args" /etc/xinetd.d/tftp

The output should indicate the "server_args" variable is configured with the "-s" flag, matching the example below:

# grep "server_args" /etc/xinetd.d/tftp
server_args = -s /var/lib/tftpboot

If it does not, this is a finding.]==]

function test()
end

function fix()
end
