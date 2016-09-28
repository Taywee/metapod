id = 'V-38664'
severity = 'medium'
weight = 10.0
title = 'The system package management tool must verify ownership on all files and directories associated with the audit package.'
description = 'Ownership of audit binaries and configuration files that is incorrect could allow an unauthorized user to gain privileges that they should not have. The ownership set by the vendor should be maintained. Any deviations from this baseline should be investigated.'
fixtext = [=[The RPM package management system can restore file ownership of the audit package files and directories. The following command will update audit files with ownership different from what is expected by the RPM database: 

# rpm --setugids audit]=]
checktext = [=[The following command will list which audit files on the system have ownership different from what is expected by the RPM database: 

# rpm -V audit | grep '^.....U'


If there is output, this is a finding.]=]

function test()
end

function fix()
end
