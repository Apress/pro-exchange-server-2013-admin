$root = [ADSI]"LDAP://RootDSE"
$m = [ADSI]("LDAP://" + "CN=ms-Exch-Schema-Version-Pt," + $root.schemaNamingContext)
$m.rangeUpper
