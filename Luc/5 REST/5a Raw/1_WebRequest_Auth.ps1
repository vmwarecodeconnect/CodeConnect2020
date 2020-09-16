Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/cis/rest/com/vmware/cis/session/post/

# Authenticate
$user = 'code2020@vsphere.local'
$pswd = 'Code2020!'

# Get components to construct the URL
$vcsaFQDN = ([uri]$global:DefaultVIServer.ExtensionData.CLient.ServiceUrl).Host
$logonService = 'rest/com/vmware/cis/session'

# Use basic authentication
$byteCred = [System.Text.Encoding]::UTF8.GetBytes("$($user):$($pswd)")
$b64Cred = [System.Convert]::ToBase64String($byteCred)

# Call the REST API
$sAuth = @{
    Uri     = "https://$vcsaFqdn/$logonService"
    Method  = 'POST'
    Headers = @{
        Authorization = "Basic $b64Cred"
    }
}
$reply = Invoke-WebRequest @sAuth

# Validate response
if ($reply.StatusCode -eq [System.Net.HttpStatusCode]::OK) {
    $token = (ConvertFrom-Json -InputObject $reply.Content).Value
    $token
} else {
    Write-Output "Authenticated failed"
    Write-Output " $($reply.StatusCode) - $($reply.StatusDescription)"
}
