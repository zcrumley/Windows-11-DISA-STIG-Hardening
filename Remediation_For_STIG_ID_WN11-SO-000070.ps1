<#
.SYNOPSIS
    This PowerShell script configures the machine inactivity limit to 15 minutes (900 seconds).

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000070
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-SO-000070/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-SO-000070.ps1
#>

# Define the system policy registry path
$Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System"

# Configure the machine inactivity limit to 900 seconds
New-ItemProperty `
    -Path $Path `
    -Name "InactivityTimeoutSecs" `
    -PropertyType DWord `
    -Value 900 `
    -Force | Out-Null

# Verify
Get-ItemProperty -Path $Path -Name "InactivityTimeoutSecs"
