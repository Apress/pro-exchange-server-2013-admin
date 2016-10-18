$Now=Get-Date
$BodyStyle="<link rel='stylesheet' type='text/css' href= 'http://www.domain.com/styles/reporting.css' />"
$BodyStyle=$BodyStyle + "<title>Exchange 2013 Mailbox Reporting</title>"
$MBXOutput = Get-MailboxStatistics –Server ams-exch01 | ConvertTo-HTML DisplayName, ServerName, DatabaseName, ItemCount, TotalItemSize -Title "Mailbox Overview" -Head $BodyStyle
$MBXoutput = $MBXoutput -replace "<BODY>", "<BODY><div id='midden'> <h3>Report $($now)</h3>"
$MBXoutput = $MBXoutput -replace "</BODY>", "</DIV></BODY>"

$Msg = new-object system.net.mail.MailMessage
$msg.IsBodyHtml = $True
$msg.Body = $MBXoutput 
$msg.Subject = "Exchange 2013 Mailbox Information"
$msg.To.add("administrator@contoso.com")
$msg.From = "administrator@contoso.com"
$SmtpClient = new-object system.net.mail.smtpClient
$smtpclient.Host = 'localhost'  
$smtpclient.Send($msg)
