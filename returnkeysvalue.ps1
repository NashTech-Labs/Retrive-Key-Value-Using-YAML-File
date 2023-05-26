$pipelineID =ConvertFrom-Yaml (Get-Content -Path /home/knoldus/Naas-JSON/Pipeline_id.yml -Raw)
| Select-Object -ExpandProperty "resources" `
| Where-Object { $_.resourceType -eq "storage-account" } `
| Group-Object -Property "pipelineID" `
| Select-Object -Property Name  | Out-String 

Write-Host "pipelineID of storage-account is -> "$pipelineID
