Get-VM -Name <VMname> |
Select-Object -Property Name,
    @{N='VMHost';E={$_.VMHost.Name}},
    @{N='ConsolidationNeeded';E={$_.ExtensionData.Runtime.ConsolidationNeeded}}
