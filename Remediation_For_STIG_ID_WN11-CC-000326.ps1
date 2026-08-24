<#
.SYNOPSIS
    This PowerShell script enables PowerShell Script Block Logging on Windows 11.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-CC-000326
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-CC-000326/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-CC-000326.ps1
#>

# Define the Script Block Logging policy registry path
$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging"

# Create the registry path if it does not exist
if (!(Test-Path $Path))
{
    New-Item -Path $Path -Force | Out-Null
}

# Enable PowerShell Script Block Logging
New-ItemProperty `
    -Path $Path `
    -Name "EnableScriptBlockLogging" `
    -PropertyType DWord `
    -Value 1 `
    -Force | Out-Null

# Verify
Get-ItemProperty -Path $Path -Name "EnableScriptBlockLogging"
