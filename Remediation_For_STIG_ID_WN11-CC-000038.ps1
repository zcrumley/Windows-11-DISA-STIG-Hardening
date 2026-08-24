<#
.SYNOPSIS
    This PowerShell script disables WDigest credential caching by setting UseLogonCredential to 0.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : linkedin.com/in/zachary-crumley/
    GitHub          : github.com/zcrumley
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000038
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-CC-000038/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-CC-000038.ps1
#>

# Define the WDigest registry path
$Path = "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\WDigest"

# Create the registry path if it does not exist
if (!(Test-Path $Path))
{
    New-Item -Path $Path -Force | Out-Null
}

# Disable WDigest credential caching
New-ItemProperty `
    -Path $Path `
    -Name "UseLogonCredential" `
    -PropertyType DWord `
    -Value 0 `
    -Force | Out-Null

# Verify
Get-ItemProperty -Path $Path -Name "UseLogonCredential"
