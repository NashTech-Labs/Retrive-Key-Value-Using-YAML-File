$pipelineID =ConvertFrom-Yaml (Get-Content -Path /home/knoldus/Naas-JSON/Pipeline_id.yml -Raw)#Get-Content -Path Pipeline_id.yml -Force | ConvertFrom-Yaml #ConvertFrom-Yaml (Get-Content -Path /home/knoldus/Naas-JSON/Pipeline_id.yml -Raw)# Invoke-RestMethod -Uri "https://raw.githubusercontent.com/muzakkirsaifi123/DCT-json/main/pipelineid.json" `
| Select-Object -ExpandProperty "resources" `
| Where-Object { $_.resourceType -eq "storage-account" } `
| Group-Object -Property "pipelineID" `
| Select-Object -Property Name  | Out-String 

Write-Host "pipelineID of storage-account is -> "$pipelineID
