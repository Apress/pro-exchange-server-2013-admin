New-PublicFolder -Name Contoso -Path \ -Mailbox MasterHierarchy
New-PublicFolder -Name Marketing -Path \Contoso
Enable-MailPublicFolder -Identity \Contoso\Marketing
Add-PublicFolderClientPermission -Identity \Contoso\Marketing -User Marketing -AccessRights PublishingEditor
