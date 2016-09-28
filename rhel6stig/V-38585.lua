id = 'V-38585'
severity = 'medium'
weight = 10.0
title = 'The system boot loader must require authentication.'
description = 'Password protection on the boot loader configuration ensures users with physical access cannot trivially alter important bootloader settings. These include which kernel to use, and whether to enter single-user mode.'
fixtext = [=[The grub boot loader should have password protection enabled to protect boot-time settings. To do so, select a password and then generate a hash from it by running the following command: 

# grub-crypt --sha-512

When prompted to enter a password, insert the following line into "/boot/grub/grub.conf" immediately after the header comments. (Use the output from "grub-crypt" as the value of [password-hash]): 

password --encrypted [password-hash]]=]
checktext = [=[To verify the boot loader password has been set and encrypted, run the following command: 

# grep password /boot/grub/grub.conf

The output should show the following: 

password --encrypted $6$[rest-of-the-password-hash]

If it does not, this is a finding.]=]

function test()
end

function fix()
end
