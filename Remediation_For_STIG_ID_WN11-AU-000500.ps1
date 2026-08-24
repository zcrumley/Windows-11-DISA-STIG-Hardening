<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Zachary Crumley
    LinkedIn        : linkedin.com/in/zachary-crumley/
    GitHub          : github.com/zcrumley
    Date Created    : 2026-08-21
    Last Modified   : 2026-08-21
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN11-AU-000500
    Documentation   : https://stigaview.com/products/win11/v2r8/WN11-AU-000500/

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
    Run this script from an elevated PowerShell session.
    Example syntax:
    PS C:\> .\Remediation_For_STIG_ID_WN11-AU-000500.ps1
#>

# Set the Application event log maximum size to 32 MB (33,554,432 bytes)
wevtutil sl Application /ms:33554432

# Verify
wevtutil gl Application | Select-String "maxSize"
