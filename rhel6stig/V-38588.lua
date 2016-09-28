id = 'V-38588'
severity = 'medium'
weight = 10.0
title = 'The system must not permit interactive boot.'
description = 'Using interactive boot, the console user could disable auditing, firewalls, or other services, weakening system security.'
fixtext = [==[To disable the ability for users to perform interactive startups, edit the file "/etc/sysconfig/init". Add or correct the line: 

PROMPT=no

The "PROMPT" option allows the console user to perform an interactive system startup, in which it is possible to select the set of services which are started on boot.]==]
checktext = [==[To check whether interactive boot is disabled, run the following command: 

$ grep PROMPT /etc/sysconfig/init

If interactive boot is disabled, the output will show: 

PROMPT=no


If it does not, this is a finding.]==]

function test()
end

function fix()
end
