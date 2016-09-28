id = 'V-38583'
severity = 'medium'
weight = 10.0
title = 'The system boot loader configuration file(s) must have mode 0600 or less permissive.'
description = 'Proper permissions ensure that only the root user can modify important boot parameters.'
fixtext = [=[File permissions for "/boot/grub/grub.conf" should be set to 600, which is the default. To properly set the permissions of "/boot/grub/grub.conf", run the command:

# chmod 600 /boot/grub/grub.conf

Boot partitions based on VFAT, NTFS, or other non-standard configurations may require alternative measures.]=]
checktext = [=[To check the permissions of "/boot/grub/grub.conf", run the command:

$ sudo ls -lL /boot/grub/grub.conf

If properly configured, the output should indicate the following permissions: "-rw-------"
If it does not, this is a finding.]=]

function test()
end

function fix()
end
