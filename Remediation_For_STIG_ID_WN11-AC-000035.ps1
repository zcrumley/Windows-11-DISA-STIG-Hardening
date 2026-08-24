<#
.SYNOPSIS
    This PowerShell script configures the minimum password length to 14 characters.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AC-000035
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AC-000035/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-AC-000035.ps1
#>

# Set the minimum password length to 14 characters
net accounts /minpwlen:14

# Verify
net accounts
