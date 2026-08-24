<#
.SYNOPSIS
    This PowerShell script disables AutoPlay for all drive types on Windows 11.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000190
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-CC-000190/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-CC-000190.ps1
#>

# Define the AutoPlay policy registry path
$Path = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\Explorer"

# Create the registry path if it does not exist
if (!(Test-Path $Path))
{
    New-Item -Path $Path -Force | Out-Null
}

# Disable AutoPlay for all drive types
New-ItemProperty `
    -Path $Path `
    -Name "NoDriveTypeAutoRun" `
    -PropertyType DWord `
    -Value 255 `
    -Force | Out-Null

# Verify
Get-ItemProperty -Path $Path -Name "NoDriveTypeAutoRun"
