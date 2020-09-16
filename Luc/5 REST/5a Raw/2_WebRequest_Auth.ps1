#requires -Version 6

Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/cis/rest/com/vmware/cis/session/post/

# Authenticate
$user = 'code2020@vsphere.local'
$pswd = 'Code2020!'

# Get components to construct the URL
$vcsaFQDN = ([uri]$global:DefaultVIServer.ExtensionData.CLient.ServiceUrl).Host
$logonService = 'rest/com/vmware/cis/session'

# Create the PSCredential
$pswdSec = ConvertTo-SecureString -String $pswd -AsPlainText -Force
$cred = New-Object -TypeName PSCredential -ArgumentList $user, $pswdSec

# Call the REST API
$sAuth = @{
    Uri            = "https://$vcsaFqdn/$logonService"
    Method         = 'POST'
    Authentication = 'Basic'
    Credential     = $cred
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
