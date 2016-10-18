$Session = New-PSSession –ConfigurationName Microsoft.Exchange –ConnectionUri https://ams-exch01.contoso.com/PowerShell -Authentication Kerberos

Import-PSSession $Session
