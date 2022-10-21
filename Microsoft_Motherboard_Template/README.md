Template to Microsoft when we get a new board from Dell that hasn't been removed from another company's Intune Management

Yes, this has happened enough times to make me make a template.  Microsoft demands wording and data files or else it's a multi-day ordeal to get everything to the right people who can make it happen.

The BAT file is there to run the Powershell script.

Use the Service Tag in place of SN

SN.pdf - Packing Slip from Dell
SN-wo.pdf - The work order from Dell's site showing the issues.
SN.cab - Would be there IF the command they insist on me running actually worked, which is what this script generates
SN.cab.log - The output of the command failing, as Microsoft won't accept your word that it failed to produce anything.
SN.csv - The results of Get-WindowsAutoPilotInfo.ps1

With these files and the script that answers most of their questions on the first round, this usually gets a week worth of back and forth down to a day.