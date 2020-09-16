$vmName = '<VMname>'

$vmExt = Get-VM -Name $vmName
$vmView = Get-View -ViewType VirtualMachine -Filter @{Name="^$vmName$"}

Compare-Object -ReferenceObject $vmExt.ExtensionData -DifferenceObject $vmView -IncludeEqual
