id = 'V-38619'
severity = 'medium'
weight = 10.0
title = 'There must be no .netrc files on the system.'
description = 'Unencrypted passwords for remote FTP servers may be stored in ".netrc" files. DoD policy requires passwords be encrypted in storage and not used in access scripts.'
fixtext = 'The ".netrc" files contain logon information used to auto-logon into FTP servers and reside in the user\'s home directory. These files may contain unencrypted passwords to remote FTP servers making them susceptible to access by unauthorized users and should not be used. Any ".netrc" files should be removed.'
checktext = [=[To check the system for the existence of any ".netrc" files, run the following command: 

$ sudo find /root /home -xdev -name .netrc

If any .netrc files exist, this is a finding.]=]

function test()
end

function fix()
end
