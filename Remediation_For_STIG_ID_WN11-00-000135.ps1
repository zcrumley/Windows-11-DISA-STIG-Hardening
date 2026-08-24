<#
.SYNOPSIS
    This PowerShell script ensures that the Windows Defender Firewall is enabled for the Domain, Private, and Public profiles.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : linkedin.com/in/zachary-crumley/
    GitHub          : github.com/zcrumley
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-00-000135
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-00-000135/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-00-000135.ps1
#>

# Enable Windows Defender Firewall for all profiles
Set-NetFirewallProfile -Profile Domain,Private,Public -Enabled True

# Verify
Get-NetFirewallProfile | Select-Object Name, Enabled
