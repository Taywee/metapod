id = 'V-51379'
severity = 'low'
weight = 10.0
title = 'All device files must be monitored by the system Linux Security Module.'
description = 'If a device file carries the SELinux type "unlabeled_t", then SELinux cannot properly restrict access to the device file. '
fixtext = 'Device files, which are used for communication with important system resources, should be labeled with proper SELinux types. If any device files carry the SELinux type "unlabeled_t", investigate the cause and correct the file\'s context. '
checktext = [=[To check for unlabeled device files, run the following command:

# ls -RZ /dev | grep unlabeled_t

It should produce no output in a well-configured system. 

If there is output, this is a finding.]=]

function test()
end

function fix()
end
