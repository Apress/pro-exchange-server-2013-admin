New-ThrottlingPolicy -Name ITStaffPowerShell -PowerShellMaxDestructiveCmdlets 10 -PowerShellMaxDestructiveCmdletsTimePeriod 60 -PowerShellMaxConcurrency 6 -PowerShellMaxCmdletQueueDepth 12 -ThrottlingPolicyScope Regular

Get-Mailbox -Identity Beau | Set-Mailbox -ThrottlingPolicy ITStaffPowerShell
