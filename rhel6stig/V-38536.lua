id = 'V-38536'
severity = 'low'
weight = 10.0
title = 'The operating system must automatically audit account disabling actions.'
description = 'In addition to auditing new user and group accounts, these watches will alert the system administrator(s) to any modifications. Any unexpected users, groups, or modifications should be investigated for legitimacy.'
fixtext = [=[Add the following to "/etc/audit/audit.rules", in order to capture events that modify account changes: 

# audit_account_changes
-w /etc/group -p wa -k audit_account_changes
-w /etc/passwd -p wa -k audit_account_changes
-w /etc/gshadow -p wa -k audit_account_changes
-w /etc/shadow -p wa -k audit_account_changes
-w /etc/security/opasswd -p wa -k audit_account_changes]=]
checktext = [=[To determine if the system is configured to audit account changes, run the following command: 

$sudo egrep -w '(/etc/passwd|/etc/shadow|/etc/group|/etc/gshadow|/etc/security/opasswd)' /etc/audit/audit.rules

If the system is configured to watch for account changes, lines should be returned for each file specified (and with "-p wa" for each). 

If the system is not configured to audit account changes, this is a finding.]=]

function test()
end

function fix()
end
