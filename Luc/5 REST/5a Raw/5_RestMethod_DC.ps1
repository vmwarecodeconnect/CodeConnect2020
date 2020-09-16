Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/vcenter/rest/vcenter/datacenter/get/

# Get Datacenter list
$dcName = ''
$dcList = 'rest/vcenter/datacenter'
$filter = "filter.names=$dcName"
$sVM = @{
    Uri                = "https://$($vcsaFqdn)/$($dcList)?$($filter)"
    Method             = 'Get'
    Headers            = @{
        'vmware-api-session-id' = $token
    }
    SkipHttpErrorCheck = $true
    StatusCodeVariable = 'StatusCode'
}
$reply = Invoke-RestMethod @sVM
if ($StatusCode -eq [System.Net.HttpStatusCode]::OK) {
    Write-Output "Datacenter List"
    $reply.Value
} else {
    $message = "REST API call failed $($StatusCode) - {0}" -f
    [System.Net.HttpStatusCode]$StatusCode
    Write-Output $message
}
