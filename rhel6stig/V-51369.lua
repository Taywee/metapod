id = 'V-51369'
severity = 'low'
weight = 10.0
title = 'The system must use a Linux Security Module configured to limit the privileges of system services.'
description = 'Setting the SELinux policy to "targeted" or a more specialized policy ensures the system will confine processes that are likely to be targeted for exploitation, such as network or system services. '
fixtext = [==[The SELinux "targeted" policy is appropriate for general-purpose desktops and servers, as well as systems in many other roles. To configure the system to use this policy, add or correct the following line in "/etc/selinux/config":

SELINUXTYPE=targeted

Other policies, such as "mls", provide additional security labeling and greater confinement but are not compatible with many general-purpose use cases. ]==]
checktext = [==[Check the file "/etc/selinux/config" and ensure the following line appears:

SELINUXTYPE=targeted

If it does not, this is a finding.]==]

function test()
end

function fix()
end
