id = 'V-38675'
severity = 'low'
weight = 10.0
title = 'Process core dumps must be disabled unless needed.'
description = 'A core dump includes a memory image taken at the time the operating system terminates an application. The memory image could contain sensitive data and is generally useful only for developers trying to debug problems.'
fixtext = [=[To disable core dumps for all users, add the following line to "/etc/security/limits.conf": 

* hard core 0]=]
checktext = [=[To verify that core dumps are disabled for all users, run the following command:

$ grep core /etc/security/limits.conf /etc/security/limits.d/*.conf

The output should be:

* hard core 0

If it is not, this is a finding.]=]

function test()
end

function fix()
end
