id = 'V-38641'
severity = 'low'
weight = 10.0
title = 'The atd service must be disabled.'
description = 'The "atd" service could be used by an unsophisticated insider to carry out activities outside of a normal login session, which could complicate accountability. Furthermore, the need to schedule tasks with "at" or "batch" is not common.'
fixtext = [=[The "at" and "batch" commands can be used to schedule tasks that are meant to be executed only once. This allows delayed execution in a manner similar to cron, except that it is not recurring. The daemon "atd" keeps track of tasks scheduled via "at" and "batch", and executes them at the specified time. The "atd" service can be disabled with the following commands: 

# chkconfig atd off
# service atd stop]=]
checktext = [=[If the system uses the "atd" service, this is not applicable.

To check that the "atd" service is disabled in system boot configuration, run the following command: 

# chkconfig "atd" --list

Output should indicate the "atd" service has either not been installed, or has been disabled at all runlevels, as shown in the example below: 

# chkconfig "atd" --list
"atd" 0:off 1:off 2:off 3:off 4:off 5:off 6:off

Run the following command to verify "atd" is disabled through current runtime configuration: 

# service atd status

If the service is disabled the command will return the following output: 

atd is stopped


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
