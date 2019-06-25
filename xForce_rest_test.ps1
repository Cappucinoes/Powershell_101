
$hdrs = @{"apikey" = "apikey" ; "password"= "password"}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-RestMethod -Method Get -Uri 'https://api.xforce.ibmcloud.com/casefiles/public'  -Headers $hdrs >> .\content.txt
