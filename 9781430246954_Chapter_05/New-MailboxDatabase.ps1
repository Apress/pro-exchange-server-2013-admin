New-MailboxDatabase -Name DB03 -Server AMS-EXCH01 -EdbFilePath F:\DB03\DB03.edb -LogFolderPath F:\DB03\LogFiles

Mount-Database -Identity DB03
