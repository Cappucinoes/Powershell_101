$contents = Invoke-RestMethod -Method Get -Uri 'https://raw.githubusercontent.com/stamparm/ipsum/master/ipsum.txt'
$contents >> .\ips.csv
$contents = Get-Content .\ips.csv | select -First 1000
$contents = ($contents | ForEach-Object {$_.split(" ")})
$contents = $contents -match '\d+.\d+.\d+.\d+' 
$contents > .\ips.csv
$contents = Get-Content .\ips.csv 
$contents.GetType()#system array []
$contents[0].GetType()#string
$just_IPs = @()
$contents | ForEach-Object {$_ -match '\d+.\d+.\d+.\d+'; $just_IPs += $Matches[0]}
$just_IPs

