Start-Process https://developer.vmware.com/docs/vsphere-automation/latest/vcenter/rest/vcenter/vm/get/

# List VMs
$user = 'code2020@vsphere.local'
$pswd = 'Code2020!'

$pswdSec = ConvertTo-SecureString -String $pswd -AsPlainText -Force
$cred = New-Object -TypeName PSCredential -ArgumentList $user, $pswdSec
$vcsaFQDN = ([uri]$global:DefaultVIServer.ExtensionData.Client.ServiceUrl).Host

$nameSpace = 'com.vmware'
$restUri = 'vcenter.vm'
$listVM = $nameSpace,$restUri -join '.'

Connect-CisServer -Server $vcsaFQDN -Credential $cred | Out-Null

$service = Get-CisService -Name $listVM
$service.list() | Select-Object -Property name,power_state

Disconnect-CisServer -Server $vcsaFQDN -Confirm:$false
