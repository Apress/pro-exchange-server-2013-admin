$BodyStyle  = "<style>"
$BodyStyle = $BodyStyle + "BODY{background-color:peachpuff;}"
$BodyStyle = $BodyStyle + "TABLE{border-width: 1px;border-style: solid; border-color: black;border-collapse: collapse;}"
$BodyStyle = $BodyStyle + "TH{border-width: 1px;padding: 0px; border-style: solid;border-color: black;background-color:thistle}"
$BodyStyle = $BodyStyle + "TD{border-width: 1px;padding: 0px; border-style: solid;border-color: black;background-color:PaleGoldenrod}"
$BodyStyle = $BodyStyle + "</style>"

Get-TransportService | Get-Queue | Select Identity, DeliveryType, Status, MessageCount, NextHopDomain, LastRetryTime, NextRetryTime | ConvertTo-Html -head $BodyStyle

$Msg = new-object system.net.mail.MailMessage
$msg.IsBodyHtml = $True
$msg.Body = $Queue
$msg.Subject = "Hub Transport Queue Information"
$msg.To.add("postmaster@contoso.com")
$msg.From = "postmaster@contoso.com"
$SmtpClient = new-object system.net.mail.smtpClient
$smtpclient.Host = '<your SMTP relay server>'  
$smtpclient.Send($msg)
