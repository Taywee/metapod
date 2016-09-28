id = 'V-38515'
severity = 'medium'
weight = 10.0
title = 'The Stream Control Transmission Protocol (SCTP) must be disabled unless required.'
description = 'Disabling SCTP protects the system against exploitation of any flaws in its implementation.'
fixtext = [=[The Stream Control Transmission Protocol (SCTP) is a transport layer protocol, designed to support the idea of message-oriented communication, with several streams of messages within one connection. To configure the system to prevent the "sctp" kernel module from being loaded, add the following line to a file in the directory "/etc/modprobe.d": 

install sctp /bin/true]=]
checktext = [=[If the system is configured to prevent the loading of the "sctp" kernel module, it will contain lines inside any file in "/etc/modprobe.d" or the deprecated"/etc/modprobe.conf". These lines instruct the module loading system to run another program (such as "/bin/true") upon a module "install" event. Run the following command to search for such lines in all files in "/etc/modprobe.d" and the deprecated "/etc/modprobe.conf": 

$ grep -r sctp /etc/modprobe.conf /etc/modprobe.d

If no line is returned, this is a finding.]=]

function test()
end

function fix()
end
