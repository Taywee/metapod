id = 'V-51337'
severity = 'medium'
weight = 10.0
title = 'The system must use a Linux Security Module at boot time.'
description = 'Disabling a major host protection feature, such as SELinux, at boot time prevents it from confining system services at boot time. Further, it increases the chances that it will remain off during system operation.'
fixtext = 'SELinux can be disabled at boot time by an argument in "/boot/grub/grub.conf". Remove any instances of "selinux=0" from the kernel arguments in that file to prevent SELinux from being disabled at boot. '
checktext = 'Inspect "/boot/grub/grub.conf" for any instances of "selinux=0" in the kernel boot arguments. Presence of "selinux=0" indicates that SELinux is disabled at boot time. If SELinux is disabled at boot time, this is a finding.'

function test()
end

function fix()
end
