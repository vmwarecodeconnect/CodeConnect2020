Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/appliance/rest/appliance/local-accounts/username/post/

# Create local account on VCSA
$user = 'code2020@vsphere.local'
$pswd = 'Code2020!'

$pswdSec = ConvertTo-SecureString -String $pswd -AsPlainText -Force
$cred = New-Object -TypeName PSCredential -ArgumentList $user,$pswdSec
$vcsaFQDN = ([uri]$global:DefaultVIServer.ExtensionData.Client.ServiceUrl).Host

$nameSpace = 'com.vmware'
$restUri = 'appliance.local_accounts'
$localUser = $nameSpace,$restUri -join '.'

$user = "code2020_user$(Get-Random)"

Connect-CisServer -Server $vcsaFQDN -Credential $cred | Out-null

$service = Get-CisService -Name $localUser
$config = $service.Help.create.config.CreateExample()
$config.email = "$user.my.domain"
$config.enabled = $true
$config.full_name = "$user Account"
$config.password = [VMware.VimAutomation.Cis.Core.Types.V1.Secret]'VMware1!'
$config.roles += 'admin'
$service.create($user,$config)

Disconnect-CisServer -Server $vcsaFQDN -Confirm:$false
