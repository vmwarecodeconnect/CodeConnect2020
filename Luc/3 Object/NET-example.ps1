$vmName = '<VMname>'
$vm = Get-VM -Name $vmName

$vm | Get-Member | Out-Host -Paging

$vm.Guest | Format-Custom -Depth 1 | Out-Host -Paging

$vm.Guest | Format-Custom -Depth 1 | more
