<#
.SYNOPSIS
    This PowerShell script disables and stops the Secondary Logon service on Windows 11.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-00-000175
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-00-000175/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-00-000175.ps1
#>

# Disable the Secondary Logon service
Set-Service -Name "seclogon" -StartupType Disabled

# Stop the service if it is currently running
Stop-Service -Name "seclogon" -Force -ErrorAction SilentlyContinue

# Verify
Get-CimInstance Win32_Service -Filter "Name='seclogon'" |
    Select-Object Name, State, StartMode
