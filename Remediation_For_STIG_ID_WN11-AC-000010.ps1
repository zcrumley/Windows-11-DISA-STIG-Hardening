<#
.SYNOPSIS
    This PowerShell script configures the account lockout threshold to three invalid logon attempts.

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : linkedin.com/in/zachary-crumley/
    GitHub          : github.com/zcrumley
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AC-000010
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AC-000010/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-AC-000010.ps1
#>

# Set the account lockout threshold to 3 invalid logon attempts
net accounts /lockoutthreshold:3

# Verify
net accounts
