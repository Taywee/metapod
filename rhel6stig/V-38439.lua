id = 'V-38439'
severity = 'medium'
weight = 10.0
title = 'The system must provide automated support for account management functions.'
description = 'A comprehensive account management process that includes automation helps to ensure the accounts designated as requiring attention are consistently and promptly addressed. Enterprise environments make user account management challenging and complex. A user management process requiring administrators to manually address account management functions adds risk of potential oversight.'
fixtext = 'Implement an automated system for managing user accounts that minimizes the risk of errors, either intentional or deliberate.  If possible, this system should integrate with an existing enterprise user management system, such as, one based Active Directory or Kerberos.'
checktext = [=[Interview the SA to determine if there is an automated system for managing user accounts, preferably integrated with an existing enterprise user management system.

If there is not, this is a finding.]=]

function test()
end

function fix()
end
