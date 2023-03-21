$response=Invoke-RestMethod -Uri https://641856d175be53f451dcbd82.mockapi.io/callingapicom/api/v1/login
#$response | Format-Table | Out-String

$response1=$response | Format-List | Out-String

$hashtb=@{}
$response | ForEach-Object{
$hashtb.Add($_.username,$_.password)

}

$hashtb
$hashtb | Out-File -FilePath D:\ps\response.txt


<#
$response1|foreach {
    [PSCustomObject]@{
        username = $_.username -as [string]
        password = $_.password -as [string]
        id       = $_.id -as [int32]
    }

}

$response1 |  ConvertTo-Json | Out-File D:\ps\own_api.json
#>

