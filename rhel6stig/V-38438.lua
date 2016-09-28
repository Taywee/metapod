id = 'V-38438'
severity = 'low'
weight = 10.0
title = 'Auditing must be enabled at boot by setting a kernel parameter.'
description = 'Each process on the system carries an "auditable" flag which indicates whether its activities can be audited. Although "auditd" takes care of enabling this for all processes which launch after it does, adding the kernel argument ensures it is set for every process during boot.'
fixtext = [==[To ensure all processes can be audited, even those which start prior to the audit daemon, add the argument "audit=1" to the kernel line in "/boot/grub/grub.conf", in the manner below:

kernel /vmlinuz-version ro vga=ext root=/dev/VolGroup00/LogVol00 rhgb quiet audit=1

UEFI systems may prepend "/boot" to the "/vmlinuz-version" argument. ]==]
checktext = [==[Inspect the kernel boot arguments (which follow the word "kernel") in "/boot/grub/grub.conf". If they include "audit=1", then auditing is enabled at boot time. 

If auditing is not enabled at boot time, this is a finding.]==]

function test()
end

function fix()
end
