$sView = @{
    ViewType = 'HostSystem'
    Property = 'Name','VM','Parent'
    PipelineVariable = 'esx'
    Filter = @{
        Name = '^esx'
    }
}

Get-View @sView |
ForEach-Object -Process {
    Get-View -Id $esx.VM -Property Name |
    Select-Object @{N='VMHost';E={$esx.Name}},
        @{N='VM';E={$_.Name}},
        @{N='Datacenter';E={
            $obj = Get-View -Id $esx.Parent -Property Name,Parent
            while($obj -isnot [VMware.Vim.Datacenter]){
                $obj = Get-View -Id $obj.Parent -Property Name,Parent
            }
            $obj.Name
        }}
}
