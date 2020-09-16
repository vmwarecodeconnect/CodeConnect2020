Start-Process https://vdc-download.vmware.com/vmwb-repository/dcr-public/b50dcbbf-051d-4204-a3e7-e1b618c1e384/538cf2ec-b34f-4bae-a332-3820ef9e7773/vim.scheduler.ScheduledTaskManager.html

$schedMgr = Get-View ScheduledTaskManager
Get-View -Id $schedMgr.ScheduledTask |
Select-Object -Property @{N='Name';E={$_.Info.Name}},
    @{N='Enabled';E={$_.Info.Enabled}},
    @{N='Entity';E={(Get-View -Id $_.Info.Entity -Property Name).Name}},
    @{N='State';E={$_.Info.State}},
    @{N='LastRun';E={$_.Info.PrevRuntime}},
    @{N='NextRun';E={$_.Info.NextRuntime}} |
Format-Table -AutoSize
