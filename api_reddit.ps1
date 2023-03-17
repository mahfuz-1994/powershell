$data = Invoke-RestMethod -Method Get -Uri 'http://reddit.com/.json'
echo $data
echo $data.data.children[0]