New-GlobalAddressList -Name "Fabrikam GAL" -RecipientFilter "((Alias -ne '`$NULL') -and (CustomAttribute1 -eq 'Fabrikam'))"

New-AddressList -Name "Fabrikam All Users Address List" -Container "\" -DisplayName "Fabrikam All Users Address List" -RecipientFilter "((Alias -ne '`$NULL') -and (CustomAttribute1 -eq 'Fabrikam'))"

New-OfflineAddressBook –Name "Fabrikam OAB" -AddressLists "Fabrikam GAL","Fabrikam All Users Address List","Fabrikam All Rooms Address List","Fabrikam All Contacts Address List","Fabrikam All Groups Address List"

New-AddressBookPolicy –Name "Fabrikam ABP" –GlobalAddressList "\Fabrikam GAL" –OfflineAddressBook "\Fabrikam OAB" –RoomList "\Fabrikam All Rooms Address List" –AddressLists "\Fabrikam All Users Address List","\Fabrikam All Groups Address List","\Fabrikam All Contacts Address List"

Get-Mailbox | where {$_.customAttribute1 -eq "Fabrikam"} | Set-Mailbox -AddressBookPolicy "Fabrikam ABP"
