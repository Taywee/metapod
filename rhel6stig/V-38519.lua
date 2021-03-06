id = 'V-38519'
severity = 'medium'
weight = 10.0
title = 'All rsyslog-generated log files must be group-owned by root.'
description = 'The log files generated by rsyslog contain valuable information regarding system configuration, user authentication, and other such information. Log files should be protected from unauthorized access.'
fixtext = [=[The group-owner of all log files written by "rsyslog" should be root. These log files are determined by the second part of each Rule line in "/etc/rsyslog.conf" and typically all appear in "/var/log". For each log file [LOGFILE] referenced in "/etc/rsyslog.conf", run the following command to inspect the file's group owner:

$ ls -l [LOGFILE]

If the owner is not "root", run the following command to correct this:

# chgrp root [LOGFILE]]=]
checktext = [=[The group-owner of all log files written by "rsyslog" should be root. These log files are determined by the second part of each Rule line in "/etc/rsyslog.conf" and typically all appear in "/var/log". To see the group-owner of a given log file, run the following command:

$ ls -l [LOGFILE]

Some log files referenced in /etc/rsyslog.conf may be created by other programs and may require exclusion from consideration.

If the group-owner is not root, this is a finding.]=]

function test()
end

function fix()
end
