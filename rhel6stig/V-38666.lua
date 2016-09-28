id = 'V-38666'
severity = 'high'
weight = 10.0
title = 'The system must use and update a DoD-approved virus scan program.'
description = 'Virus scanning software can be used to detect if a system has been compromised by computer viruses, as well as to limit their spread to other systems.'
fixtext = [=[Install virus scanning software, which uses signatures to search for the presence of viruses on the filesystem. 

The McAfee VirusScan Enterprise for Linux virus scanning tool is provided for DoD systems. Ensure virus definition files are no older than 7 days, or their last release. 

Configure the virus scanning software to perform scans dynamically on all accessed files. If this is not possible, configure the system to scan all altered files on the system on a daily basis. If the system processes inbound SMTP mail, configure the virus scanner to scan all received mail. ]=]
checktext = [=[Inspect the system for a cron job or system service which executes a virus scanning tool regularly.
To verify the McAfee VSEL system service is operational, run the following command:

# /etc/init.d/nails status

To check on the age of uvscan virus definition files, run the following command:

# cd /opt/NAI/LinuxShield/engine/dat
# ls -la avvscan.dat avvnames.dat avvclean.dat

If virus scanning software does not run continuously, or at least daily, or has signatures that are out of date, this is a finding.]=]

function test()
end

function fix()
end
