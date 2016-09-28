id = 'V-38446'
severity = 'medium'
weight = 10.0
title = 'The mail system must forward all mail for root to one or more system administrators.'
description = 'A number of system services utilize email messages sent to the root user to notify system administrators of active or impending issues.  These messages must be forwarded to at least one monitored email address.'
fixtext = [=[Set up an alias for root that forwards to a monitored email address:

# echo "root: <system.administrator>@mail.mil" >> /etc/aliases
# newaliases]=]
checktext = [=[Find the list of alias maps used by the Postfix mail server:

# postconf alias_maps

Query the Postfix alias maps for an alias for "root":

# postmap -q root <alias_map>

If there are no aliases configured for root that forward to a monitored email address, this is a finding.]=]

function test()
end

function fix()
end
