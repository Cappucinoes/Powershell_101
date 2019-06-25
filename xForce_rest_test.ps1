
$hdrs = @{"apikey" = "e042f30f-2917-4076-a10f-71cb3bcd61e5" ; "password"= "c5dec9c8-8f7d-47e4-90f6-9157e20df947"}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Method Get -Uri 'https://api.xforce.ibmcloud.com/casefiles/public'  -Headers $hdrs >> .\content.txt
