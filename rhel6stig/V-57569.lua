id = 'V-57569'
severity = 'medium'
weight = 10.0
title = 'The noexec option must be added to the /tmp partition.'
description = 'Allowing users to execute binaries from world-writable directories such as "/tmp" should never be necessary in normal operation and can expose the system to potential compromise.'
fixtext = 'The "noexec" mount option can be used to prevent binaries from being executed out of "/tmp". Add the "noexec" option to the fourth column of "/etc/fstab" for the line which controls mounting of "/tmp".'
checktext = [=[To verify that binaries cannot be directly executed from the /tmp directory, run the following command:

$ grep '\s/tmp' /etc/fstab

The resulting output will show whether the /tmp partition has the "noexec" flag set. If the /tmp partition does not have the noexec flag set, this is a finding.]=]

function test()
end

function fix()
end
