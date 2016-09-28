id = 'V-38684'
severity = 'low'
weight = 10.0
title = 'The system must limit users to 10 simultaneous system logins, or a site-defined number, in accordance with operational requirements.'
description = 'Limiting simultaneous user logins can insulate the system from denial of service problems caused by excessive logins. Automated login processes operating improperly or maliciously may result in an exceptional number of simultaneous login sessions.'
fixtext = [=[Limiting the number of allowed users and sessions per user can limit risks related to denial of service attacks. This addresses concurrent sessions for a single account and does not address concurrent sessions by a single user via multiple accounts. To set the number of concurrent sessions per user add the following line in "/etc/security/limits.conf": 

* hard maxlogins 10

A documented site-defined number may be substituted for 10 in the above.]=]
checktext = [=[Run the following command to ensure the "maxlogins" value is configured for all users on the system:

$ grep "maxlogins" /etc/security/limits.conf /etc/security/limits.d/*.conf

You should receive output similar to the following:

* hard maxlogins 10

If it is not similar, this is a finding.]=]

function test()
end

function fix()
end
