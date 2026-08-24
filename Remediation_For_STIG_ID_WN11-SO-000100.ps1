<#
.SYNOPSIS
    This PowerShell script configures the Windows SMB client to always require SMB packet signing.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : 
    GitHub          : 
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-SO-000100
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-SO-000100/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-SO-000100.ps1
#>

# Require SMB client packet signing
Set-SmbClientConfiguration -RequireSecuritySignature $true -Force

# Verify
Get-SmbClientConfiguration |
    Select-Object EnableSecuritySignature, RequireSecuritySignature
