id = 'V-51391'
severity = 'medium'
weight = 10.0
title = 'A file integrity baseline must be created.'
description = 'For AIDE to be effective, an initial database of "known-good" information about files must be captured and it should be able to be verified against the installed files. '
fixtext = [=[Run the following command to generate a new database:

# /usr/sbin/aide --init

By default, the database will be written to the file "/var/lib/aide/aide.db.new.gz". Storing the database, the configuration file "/etc/aide.conf", and the binary "/usr/sbin/aide" (or hashes of these files), in a secure location (such as on read-only media) provides additional assurance about their integrity. The newly-generated database can be installed as follows:

# cp /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz

To initiate a manual check, run the following command:

# /usr/sbin/aide --check

If this check produces any unexpected output, investigate. ]=]
checktext = [=[To find the location of the AIDE database file, run the following command:

# grep DBDIR /etc/aide.conf

Using the defined values of the [DBDIR] and [database] variables, verify the existence of the AIDE database file:

# ls -l [DBDIR]/[database_file_name]

If there is no database file, this is a finding.]=]

function test()
end

function fix()
end
