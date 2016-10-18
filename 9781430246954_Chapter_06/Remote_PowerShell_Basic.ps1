$Credential = Get-Credential

$Session = New-PSSession –ConfigurationName Microsoft.Exchange –ConnectionUri https://webmail.contoso.com/PowerShell -Authentication Basic -Credential $Credential

Import-PSSession $Session
