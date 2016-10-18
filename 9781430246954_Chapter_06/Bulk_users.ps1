$Database="DB01"
$UPN="FourthCoffee.com"
$users = import-csv $args[0]

function SecurePassword([string]$password)
{
  $secure = New-Object System.Security.SecureString
  $password.ToCharArray() | % { $secure.AppendChar($_) }
  return $secure
}
ForEach ($user in $users)
{
  $sp = SecurePassword $user.password
  $upn = $user.FirstName + "@"+ $upn
  $DisplayName = $user.FirstName + " "+ $user.LastName
  New-Mailbox -Password $sp -Database $Database -UserPrincipalName $UPN -Name $DisplayName -FirstName $user.FirstName -LastName $user.LastName -OrganizationalUnit $user.OU
}

