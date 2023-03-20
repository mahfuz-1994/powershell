#$Username="mahfuz"
#$Password="xyz"
#$url="https://reqres.in/api/users"

#$response=Invoke-RestMethod -Method Get -Uri 'https://reqres.in/api/users'
#Write-Output "$data"

$responce=Invoke-WebRequest -Uri https://reqres.in/api/users
$responce.inputfields | Where-Object {
    $_.id -like "*id"
    $_.email -like "*email"
    $_.first_name -like "*first_name"
    $_.last_name -like "*last_name"
    $_.avatar -like "*avatar"
}

Write-Host "$responce"



