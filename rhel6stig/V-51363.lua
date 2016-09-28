id = 'V-51363'
severity = 'medium'
weight = 10.0
title = 'The system must use a Linux Security Module configured to enforce limits on system services.'
description = 'Setting the SELinux state to enforcing ensures SELinux is able to confine potentially compromised processes to the security policy, which is designed to prevent them from causing damage to the system or further elevating their privileges. '
fixtext = [==[The SELinux state should be set to "enforcing" at system boot time. In the file "/etc/selinux/config", add or correct the following line to configure the system to boot into enforcing mode:

SELINUX=enforcing]==]
checktext = [==[Check the file "/etc/selinux/config" and ensure the following line appears:

SELINUX=enforcing

If SELINUX is not set to enforcing, this is a finding.]==]

function test()
end

function fix()
end
