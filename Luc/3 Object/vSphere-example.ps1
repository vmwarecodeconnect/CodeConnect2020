$vmName = '<VMname>'

Get-View -ViewType VirtualMachine -Filter @{Name="$vmName"} | 
Select-Object -Property Name

Get-View -ViewType VirtualMachine -Filter @{Name="^$vmName$"} | 
Select-Object -Property Name

$vm = Get-View -ViewType VirtualMachine -Filter @{Name="^$vmName$"}
$vm | Get-Member | Out-Host -Paging

$vm.Summary | Format-Custom -Depth 1 | Out-Host -Paging


