Setup.exe /PrepareSchema /IAcceptExchangeServerLicenseTerms
Setup.exe /PrepareAD /OrganizationName:CONTOSO /IAcceptExchangeServerLicenseTerms
Setup.exe /PrepareDomain /IAcceptExchangeServerLicenseTerms

Setup.exe /mode:install /role:clientaccess,mailbox /IAcceptExchangeServerLicenseTerms /Mdbname:MDB01 /DbFilePath:F:\MDB01\MDB01.edb /LogFolderPath:F:\MDB01\LogFiles 
