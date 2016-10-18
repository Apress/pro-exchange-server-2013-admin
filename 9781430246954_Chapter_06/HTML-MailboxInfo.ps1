$Now=Get-Date
$BodyStyle="<link rel='stylesheet' type='text/css' href= 'http://www.domain.com/styles/reporting.css' />"
$BodyStyle=$BodyStyle + "<title>Exchange 2013 Mailbox Reporting</title>"
$MBXOutput = Get-MailboxStatistics –Server ams-exch01 | ConvertTo-HTML DisplayName, ServerName, DatabaseName, ItemCount, TotalItemSize -Title "Mailbox Overview" -Head $BodyStyle
$MBXoutput = $MBXoutput -replace "<BODY>", "<BODY><div id='midden'> <h3>Report $($now)</h3>"
$MBXoutput = $MBXoutput -replace "</BODY>", "</DIV></BODY>"
$MBXoutput | Out-File MailboxInfo.html
