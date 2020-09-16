$drawing = '.\1 Flow\ArtAPI.drawio'
$title = 'API Flowchart'
[xml]$content = Get-Content -Path $drawing

$uriBase = 'https://viewer.diagrams.net/'
$options = 'p=anim','lightbox=open','highlight=0000ff','nav=1',"title=$($title)"
$uri = "$($uriBase)?$($options -join '&')#R$([uri]::EscapeDataString($content.mxfile.diagram.'#text'))"

Start-Process $uri
