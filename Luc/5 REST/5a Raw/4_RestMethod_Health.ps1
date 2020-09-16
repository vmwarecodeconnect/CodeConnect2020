Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/appliance/rest/appliance/health/system/get/

# Get VCSA health
$healthService = 'rest/appliance/health/system'
$sHealth = @{
    Uri                = "https://$vcsaFqdn/$healthService"
    Method             = 'Get'
    Headers            = @{
        'vmware-api-session-id' = $token
    }
    SkipHttpErrorCheck = $true
    StatusCodeVariable = 'StatusCode'
}
$reply = Invoke-RestMethod @sHealth
if ($StatusCode -eq [System.Net.HttpStatusCode]::OK) {
    Write-Output "System health : $($reply.value)"
} else {
    $statusCodeText = [System.Net.HttpStatusCode]$StatusCode
    Write-Output "REST API call failed $($StatusCode) - $statusCodeText"
}
