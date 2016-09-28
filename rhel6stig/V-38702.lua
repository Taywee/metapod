id = 'V-38702'
severity = 'low'
weight = 10.0
title = 'The FTP daemon must be configured for logging or verbose mode.'
description = 'To trace malicious activity facilitated by the FTP service, it must be configured to ensure that all commands sent to the ftp server are logged using the verbose vsftpd log format. The default vsftpd log file is /var/log/vsftpd.log.'
fixtext = [==[Add or correct the following configuration options within the "vsftpd" configuration file, located at "/etc/vsftpd/vsftpd.conf". 

xferlog_enable=YES
xferlog_std_format=NO
log_ftp_protocol=YES]==]
checktext = [=[Find if logging is applied to the ftp daemon. 

Procedures: 

If vsftpd is started by xinetd the following command will indicate the xinetd.d startup file. 

# grep vsftpd /etc/xinetd.d/*



# grep server_args [vsftpd xinetd.d startup file]

This will indicate the vsftpd config file used when starting through xinetd. If the [server_args]line is missing or does not include the vsftpd configuration file, then the default config file (/etc/vsftpd/vsftpd.conf) is used. 

# grep xferlog_enable [vsftpd config file]


If xferlog_enable is missing, or is not set to yes, this is a finding.]=]

function test()
end

function fix()
end
