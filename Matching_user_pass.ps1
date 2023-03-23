$api=Invoke-RestMethod -Uri https://641856d175be53f451dcbd82.mockapi.io/callingapicom/api/v1/login

$apiuser=$api.username
Write-Host "$apiuser"
Write-Host "************"

$apipass=$api.password
Write-Output "$apipass"
Write-Output "-----------"

<#$apiid=$api.id
Write-Host "$apiid"
Write-Host "+++++++++++++"
#>
if($apiuser -eq "godofwar" -and $apipass -eq "war")
{
    Write-Output "Inside if loop"
}
else
{
    Write-Output "Else loop"
    throw 'Auth fail'
}