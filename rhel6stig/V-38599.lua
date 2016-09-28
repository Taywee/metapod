id = 'V-38599'
severity = 'medium'
weight = 10.0
title = 'The FTPS/FTP service on the system must be configured with the Department of Defense (DoD) login banner.'
description = 'This setting will cause the system greeting banner to be used for FTP connections as well.'
fixtext = [==[Edit the vsftpd configuration file, which resides at "/etc/vsftpd/vsftpd.conf" by default. Add or correct the following configuration options. 

banner_file=/etc/issue

Restart the vsftpd daemon.

# service vsftpd restart]==]
checktext = [==[To verify this configuration, run the following command: 

grep "banner_file" /etc/vsftpd/vsftpd.conf

The output should show the value of "banner_file" is set to "/etc/issue", an example of which is shown below. 

# grep "banner_file" /etc/vsftpd/vsftpd.conf
banner_file=/etc/issue


If it does not, this is a finding.]==]

function test()
end

function fix()
end
