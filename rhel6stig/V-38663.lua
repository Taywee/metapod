id = 'V-38663'
severity = 'medium'
weight = 10.0
title = 'The system package management tool must verify permissions on all files and directories associated with the audit package.'
description = 'Permissions on audit binaries and configuration files that are too generous could allow an unauthorized user to gain privileges that they should not have. The permissions set by the vendor should be maintained. Any deviations from this baseline should be investigated.'
fixtext = [=[The RPM package management system can restore file access permissions of the audit package files and directories. The following command will update audit files with permissions different from what is expected by the RPM database: 

# rpm --setperms audit]=]
checktext = [=[The following command will list which audit files on the system have permissions different from what is expected by the RPM database: 

# rpm -V audit | grep '^.M'

If there is any output, for each file or directory found, compare the RPM-expected permissions with the permissions on the file or directory:

# rpm -q --queryformat "[%{FILENAMES} %{FILEMODES:perms}\n]" audit | grep  [filename]
# ls -lL [filename]

If the existing permissions are more permissive than those expected by RPM, this is a finding.]=]

function test()
end

function fix()
end
