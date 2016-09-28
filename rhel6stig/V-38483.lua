id = 'V-38483'
severity = 'medium'
weight = 10.0
title = 'The system package management tool must cryptographically verify the authenticity of system software packages during installation.'
description = "Ensuring the validity of packages' cryptographic signatures prior to installation ensures the provenance of the software and protects against malicious tampering."
fixtext = [==[The "gpgcheck" option should be used to ensure checking of an RPM package's signature always occurs prior to its installation. To configure yum to check package signatures before installing them, ensure the following line appears in "/etc/yum.conf" in the "[main]" section: 

gpgcheck=1]==]
checktext = [==[To determine whether "yum" is configured to use "gpgcheck", inspect "/etc/yum.conf" and ensure the following appears in the "[main]" section: 

gpgcheck=1

A value of "1" indicates that "gpgcheck" is enabled. Absence of a "gpgcheck" line or a setting of "0" indicates that it is disabled. 
If GPG checking is not enabled, this is a finding.

If the "yum" system package management tool is not used to update the system, verify with the SA that installed packages are cryptographically signed.]==]

function test()
end

function fix()
end
