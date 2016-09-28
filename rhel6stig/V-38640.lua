id = 'V-38640'
severity = 'low'
weight = 10.0
title = 'The Automatic Bug Reporting Tool (abrtd) service must not be running.'
description = "Mishandling crash data could expose sensitive information about vulnerabilities in software executing on the local machine, as well as sensitive information from within a process's address space or registers."
fixtext = [=[The Automatic Bug Reporting Tool ("abrtd") daemon collects and reports crash data when an application crash is detected. Using a variety of plugins, abrtd can email crash reports to system administrators, log crash reports to files, or forward crash reports to a centralized issue tracking system such as RHTSupport. The "abrtd" service can be disabled with the following commands: 

# chkconfig abrtd off
# service abrtd stop]=]
checktext = [=[To check that the "abrtd" service is disabled in system boot configuration, run the following command: 

# chkconfig "abrtd" --list

Output should indicate the "abrtd" service has either not been installed, or has been disabled at all runlevels, as shown in the example below: 

# chkconfig "abrtd" --list
"abrtd" 0:off 1:off 2:off 3:off 4:off 5:off 6:off

Run the following command to verify "abrtd" is disabled through current runtime configuration: 

# service abrtd status

If the service is disabled the command will return the following output: 

abrtd is stopped


If the service is running, this is a finding.]=]

function test()
end

function fix()
end
