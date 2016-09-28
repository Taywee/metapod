id = 'V-38581'
severity = 'medium'
weight = 10.0
title = 'The system boot loader configuration file(s) must be group-owned by root.'
description = 'The "root" group is a highly-privileged group. Furthermore, the group-owner of this file should not have any access privileges anyway.'
fixtext = [=[The file "/boot/grub/grub.conf" should be group-owned by the "root" group to prevent destruction or modification of the file. To properly set the group owner of "/boot/grub/grub.conf", run the command: 

# chgrp root /boot/grub/grub.conf]=]
checktext = [=[To check the group ownership of "/boot/grub/grub.conf", run the command: 

$ ls -lL /boot/grub/grub.conf

If properly configured, the output should indicate the group-owner is "root".
If it does not, this is a finding.]=]

function test()
end

function fix()
end
