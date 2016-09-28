id = 'V-38471'
severity = 'low'
weight = 10.0
title = 'The system must forward audit records to the syslog service.'
description = 'The auditd service does not include the ability to send audit records to a centralized server for management directly.  It does, however, include an audit event multiplexor plugin (audispd) to pass audit records to the local syslog server.'
fixtext = [=[Set the "active" line in "/etc/audisp/plugins.d/syslog.conf" to "yes".  Restart the auditd process.

# service auditd restart]=]
checktext = [=[Verify the audispd plugin is active:

# grep active /etc/audisp/plugins.d/syslog.conf

If the "active" setting is missing or set to "no", this is a finding.]=]

function test()
end

function fix()
end
