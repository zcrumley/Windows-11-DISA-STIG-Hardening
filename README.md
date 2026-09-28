# Windows 11 DISA STIG Hardening Project

## Overview

This project focused on hardening a Windows 11 system using the Defense Information Systems Agency (DISA) Security Technical Implementation Guides (STIGs) as the security baseline.

The objective was to identify insecure or non-compliant system configurations, remediate those findings, and improve the overall security posture of the Windows 11 environment.

A major part of the project involved using **PowerShell scripts to automate the implementation of STIG requirements**. Rather than manually changing every configuration, PowerShell was used to apply security settings consistently and efficiently across the system.

## Objectives

- Review Windows 11 DISA STIG requirements
- Identify system configurations that did not meet the required security baseline
- Research the purpose and security impact of individual STIG controls
- Use PowerShell to automate security configuration changes
- Remediate non-compliant Windows settings
- Verify that implemented changes met the applicable STIG requirements
- Gain hands-on experience with system hardening, automation, and security compliance

## Implementation

The Windows 11 system was evaluated against applicable DISA STIG requirements.

For findings that did not meet the required configuration, I researched the expected security setting and determined the appropriate method of remediation.

Where possible, I created and used **PowerShell scripts** to implement the required changes. These scripts were used to modify system configurations such as:

- Windows Registry settings
- Local security policies
- Audit policies
- Account and authentication settings
- Windows services
- System security options
- Network-related security configurations

Using PowerShell allowed many of the STIG requirements to be implemented in a repeatable and consistent manner instead of relying entirely on manual configuration.

After implementing each remediation, I verified the affected system settings to confirm that the required configuration had been successfully applied.

## Security Areas Covered

The project included hardening controls related to:

- Account and authentication security
- Password and account lockout policies
- User rights and permissions
- Windows Defender and endpoint security
- Audit and logging configuration
- Local security policies
- Network security settings
- Windows services
- Registry-based security configurations
- Access control and privilege management
- Reduction of unnecessary or insecure functionality

## PowerShell Automation

PowerShell played a major role in the project by automating the remediation process.

Scripts were used to configure Windows security settings and reduce the amount of repetitive manual work required to implement the STIG baseline.

Using PowerShell also provided several benefits:

- Consistent implementation of security controls
- Faster remediation of multiple findings
- Reduced risk of manual configuration errors
- Repeatable system-hardening procedures
- Easier validation and troubleshooting
- Better understanding of Windows administration through scripting

This helped demonstrate how security automation can be used to enforce secure configurations across Windows systems.

## Skills Demonstrated

- Windows 11 security administration
- DISA STIG implementation
- PowerShell scripting
- Security automation
- Operating system hardening
- Security baseline assessment
- Vulnerability remediation
- Windows Registry configuration
- Local security policy management
- Audit policy configuration
- Access control and least privilege
- Compliance validation
- Security research and documentation

## Key Takeaways

This project provided hands-on experience applying a recognized security baseline to a Windows 11 system while also using automation to streamline the remediation process.

Working through the STIG requirements strengthened my understanding of:

- Defense-in-depth
- Least privilege
- Secure configuration management
- Authentication security
- Auditing and logging
- Attack-surface reduction
- Security automation
- Compliance-driven system administration

The project also demonstrated how **PowerShell can be used as a security administration tool to automate operating system hardening and enforce standardized configurations**.

Overall, the project helped bridge the gap between understanding security concepts and implementing those concepts directly within a Windows environment.
