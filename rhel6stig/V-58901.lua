id = 'V-58901'
severity = 'medium'
weight = 10.0
title = 'The sudo command must require authentication.'
description = 'The "sudo" command allows authorized users to run programs (including shells) as other users, system users, and root. The "/etc/sudoers" file is used to configure authorized "sudo" users as well as the programs they are allowed to run. Some configuration options in the "/etc/sudoers" file allow configured users to run programs without re-authenticating. Use of these configuration options makes it easier for one compromised account to be used to compromise other accounts.'
fixtext = [=[Update the "/etc/sudoers" or other sudo configuration files to remove or comment out lines utilizing the "NOPASSWD" and "!authenticate" options.

# visudo
# visudo -f [other sudo configuration file]]=]
checktext = [=[Verify neither the "NOPASSWD" option nor the "!authenticate" option is configured for use in "/etc/sudoers" and associated files. Note that the "#include" and "#includedir" directives may be used to include configuration data from locations other than the defaults enumerated here.

# egrep '^[^#]*NOPASSWD' /etc/sudoers /etc/sudoers.d/*
# egrep '^[^#]*!authenticate' /etc/sudoers /etc/sudoers.d/*

If the "NOPASSWD" or "!authenticate" options are configured for use in "/etc/sudoers" or associated files, this is a finding.]=]

function test()
end

function fix()
end
