New-DatabaseAvailabilityGroup -Name DAG01 -WitnessServer AMS-FS01.contoso.com -WitnessDirectory C:\DAG01\DAG01_FSW -DatabaseAvailabilityGroupIPAddresses 192.168.0.187

Add-DatabaseAvailabilityGroupServer -Identity DAG01 -MailboxServer AMS-EXCH01

Add-DatabaseAvailabilityGroupServer -Identity DAG01 -MailboxServer AMS-EXCH02

Set-DatabaseAvailabilityGroup -Identity DAG01 -ManualDagNetworkConfiguration $true

New-DatabaseAvailabilityGroupNetwork -DatabaseAvailabilityGroup DAG01 -Name "Contoso Replication Network" -Subnets 10.10.10.0/24 -ReplicationEnabled:$true

Get-DatabaseAvailabilityGroupNetwork -Identity DAG01\MapiDagNetwork | Set-DatabaseAvailabilityGroupNetwork -ReplicationEnabled:$false

Add-MailboxDatabaseCopy -Identity DB01 -MailboxServer AMS-EXCH02 -ActivationPreference 2

Add-MailboxDatabaseCopy -Identity DB02 -MailboxServer AMS-EXCH01 -ActivationPreference 2

