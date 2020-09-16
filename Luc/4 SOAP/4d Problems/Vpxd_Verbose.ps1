#requires -Modules Posh-Ssh

#region Set VCSA logging to 'verbose'

$verboseLevel = 'verbose'

$sAdvGet = @{
    Entity = $global:DefaultVIServer
    Name = 'config.log.level'
}
$logLevel = Get-AdvancedSetting @sAdvGet
if($logLevel.Value -ne $verboseLevel) {
    $sAdvSet = @{
        AdvancedSetting = $logLevel
        Value = 'verbose'
        Confirm = $false
    }
    Set-AdvancedSetting @sAdvSet
}
#endregion

#region Get VCSA hostname & credentials

$vcsaServer = [uri]$global:DefaultVIServer.ExtensionData.Client.ServiceUrl
$viCred = Get-VICredentialStoreItem -Host $vcsaServer.Host
$vcsaSecure = ConvertTo-SecureString -String $viCred.Password -AsPlainText -Force
$cred = New-Object -TypeName PSCredential -ArgumentList $viCred.User,$vcsaSecure

$sSession = @{
    ComputerName = $vcsaServer.Host
    Credential = $cred
    AcceptKey = $true
}
$session = New-SSHSession @sSession
#endregion

$start = Get-Date

#region Your code

$user = 'testuser'
$old = 'MyPrevious1!'
$new = 'Whatever666!'

$sView = @{
    Viewtype = 'HostSystem'
    Property = 'ConfigManager.AccountManager'
    PipelineVariable = 'esx'
    Filter = @{
        Name = 'esx3'
    }
}
Get-View @sView |
foreach-object -process {
    $userMgr = Get-View -Id $esx.ConfigManager.AccountManager
    $userMgr.ChangePassword($user,$old,$new)
}

#endregion

$finish = Get-Date

#region Fetch vpxd extract

$time1 = $start.ToString('yyyy-MM-ddTHH:mm:ss')
$time2 = $finish.ToString('yyyy-MM-ddTHH:mm:ss')
$log = '/var/log/vmware/vpxd/vpxd.log'

$cmd = @'
shell
sed -n '/$time1/,/$time2/p' $log
'@
$sCommand = @{
    SSHSession = $session
    Command = $ExecutionContext.InvokeCommand.ExpandString($cmd)
}
$result = Invoke-SSHCommand @sCommand

Remove-SSHSession -SSHSession $session | Out-Null

#endregion

#region Set VCSA logging back to the  original setting

if($logLevel.Value -ne $verboseLevel) {
    $sAdvSet = @{
        AdvancedSetting = $logLevel
        Value = $loglevel.Value
        Confirm = $false
    }
    Set-AdvancedSetting @sAdvSet
}

#endregion

#region The log extract

$result.Output

#endregion
