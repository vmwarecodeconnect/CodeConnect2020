Start-Process https://vdc-download.vmware.com/vmwb-repository/dcr-public/b50dcbbf-051d-4204-a3e7-e1b618c1e384/538cf2ec-b34f-4bae-a332-3820ef9e7773/vim.alarm.AlarmManager.html#clearTriggeredAlarms

# Method via a Service Manager

$alarmMgr = Get-View AlarmManager

# Clear all yellow metric alarms on VMs

$filter = New-Object -TypeName VMware.Vim.AlarmFilterSpec

$filter.Status = [VMware.Vim.ManagedEntityStatus]::yellow
$filter.TypeEntity = [VMware.Vim.AlarmFilterSpecAlarmTypeByEntity]::entityTypeVm
$filter.TypeTrigger = [VMware.Vim.AlarmFilterSpecAlarmTypeByTrigger]::triggerTypeMetric
$alarmMgr.ClearTriggeredAlarms($filter)

# Clear all alarms

$filter = New-Object -TypeName VMware.Vim.AlarmFilterSpec

$alarmMgr.ClearTriggeredAlarms($filter)
