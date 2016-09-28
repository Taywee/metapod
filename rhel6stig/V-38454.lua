id = 'V-38454'
severity = 'low'
weight = 10.0
title = 'The system package management tool must verify ownership on all files and directories associated with packages.'
description = 'Ownership of system binaries and configuration files that is incorrect could allow an unauthorized user to gain privileges that they should not have. The ownership set by the vendor should be maintained. Any deviations from this baseline should be investigated.'
fixtext = [=[The RPM package management system can restore ownership of package files and directories. The following command will update files and directories with ownership different from what is expected by the RPM database: 

# rpm -qf [file or directory name]
# rpm --setugids [package]]=]
checktext = [=[The following command will list which files on the system have ownership different from what is expected by the RPM database: 

# rpm -Va | grep '^.....U'


If there is output, this is a finding.]=]

function test()
end

function fix()
end
