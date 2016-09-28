id = 'V-38579'
severity = 'medium'
weight = 10.0
title = 'The system boot loader configuration file(s) must be owned by root.'
description = 'Only root should be able to modify important boot parameters.'
fixtext = [=[The file "/boot/grub/grub.conf" should be owned by the "root" user to prevent destruction or modification of the file. To properly set the owner of "/boot/grub/grub.conf", run the command: 

# chown root /boot/grub/grub.conf]=]
checktext = [=[To check the ownership of "/boot/grub/grub.conf", run the command: 

$ ls -lL /boot/grub/grub.conf

If properly configured, the output should indicate that the owner is "root".
If it does not, this is a finding.]=]

function test()
end

function fix()
end
