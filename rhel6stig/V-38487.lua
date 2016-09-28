id = 'V-38487'
severity = 'low'
weight = 10.0
title = 'The system package management tool must cryptographically verify the authenticity of all software packages during installation.'
description = "Ensuring all packages' cryptographic signatures are valid prior to installation ensures the provenance of the software and protects against malicious tampering."
fixtext = [==[To ensure signature checking is not disabled for any repos, remove any lines from files in "/etc/yum.repos.d" of the form: 

gpgcheck=0]==]
checktext = [==[To determine whether "yum" has been configured to disable "gpgcheck" for any repos, inspect all files in "/etc/yum.repos.d" and ensure the following does not appear in any sections: 

gpgcheck=0

A value of "0" indicates that "gpgcheck" has been disabled for that repo. 
If GPG checking is disabled, this is a finding.

If the "yum" system package management tool is not used to update the system, verify with the SA that installed packages are cryptographically signed.]==]

function test()
end

function fix()
end
