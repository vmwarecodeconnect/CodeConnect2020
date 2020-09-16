# See documentation
Start-Process https://vdc-repo.vmware.com/vmwb-repository/dcr-public/790263bc-bd30-48f1-af12-ed36055d718b/e5f17bfc-ecba-40bf-a04f-376bbb11e811/vim.HostSystem.html#enterMaintenanceMode

$sView = @{
    ViewType = 'HostSystem'
    Property = 'Name'
    PipelineVariable = 'esx'
    Filter = @{
        Name = '^esx3'
    }
}

$esx = Get-View @sView

Get-Member -InputObject $esx -MemberType Method -Name EnterMaintenance*

$maintSpec = New-Object -TypeName VMware.Vim.HostMaintenanceSpec
$maintSpec.VsanMode = New-Object -TypeName VMware.Vim.VsanHostDecommissionMode
$maintSpec.VsanMode.ObjectAction = [VMware.Vim.VsanHostDecommissionModeObjectAction]::noAction

# Wait for method call to complete
$esx.EnterMaintenanceMode(0,$null,$maintSpec)

# Method call runs in background (cfr RunAsync)
$taskMoRef = $esx.EnterMaintenanceMode_Task(0,$null,$maintSpec)
(Get-View -Id $taskMoRef).Info
