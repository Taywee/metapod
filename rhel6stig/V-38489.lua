id = 'V-38489'
severity = 'medium'
weight = 10.0
title = 'A file integrity tool must be installed.'
description = 'The AIDE package must be installed if it is to be available for integrity checking.'
fixtext = [=[Install the AIDE package with the command: 

# yum install aide]=]
checktext = [=[If another file integrity tool is installed, this is not a finding.

Run the following command to determine if the "aide" package is installed: 

# rpm -q aide


If the package is not installed, this is a finding.]=]

function test()
end

function fix()
end
