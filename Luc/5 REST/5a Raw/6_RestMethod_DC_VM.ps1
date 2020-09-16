Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/vcenter/rest/vcenter/vm/get/

# List VM (combine with Datacenter)

$vmList = 'rest/vcenter/vm'

ForEach($dc in $replyDC.value){
    $filter = "filter.datacenters=$($dc.datacenter)"
    $sVM = @{
        Uri                = "https://$($vcsaFqdn)/$($vmList)?$($filter)"
        Method             = 'Get'
        Headers            = @{
            'vmware-api-session-id' = $token
        }
        SkipHttpErrorCheck = $true
        StatusCodeVariable = 'StatusCode'
    }
    $replyVM = Invoke-RestMethod @sVM

    if ($StatusCode -eq [System.Net.HttpStatusCode]::OK) {
        ForEach($vm in $replyVM.value){
            $vm | Select-Object -Property @{N='Datacenter';E={$dc.name}},
                name,power_state
        }
    } else {
        Write-Output "REST API call failed $($StatusCode)"
        Write-Output " $([System.Net.HttpStatusCode]$StatusCode)"
    }
}
