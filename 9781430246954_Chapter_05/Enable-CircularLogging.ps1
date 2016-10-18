Set-MailboxDatabase -Identity DB03 -CircularLoggingEnabled:$true
Dismount-Database -Identity DB03 -Confirm:$false
Mount-Database -Identity DB03
