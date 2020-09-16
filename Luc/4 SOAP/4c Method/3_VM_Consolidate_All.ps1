# Access the Managed Object through ExtensionData

Get-VM |
Where-Object{$_.ExtensionData.Runtime.ConsolidationNeeded} |
ForEach-Object -Process {
    $_.ExtensionData.ConsolidateVMDisks()
}
