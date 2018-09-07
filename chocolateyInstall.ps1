$packageName = 'msinttypes' 
$installerType = 'EXE_OR_MSI' #only one of these two: exe or msi
$url = 'https://raw.githubusercontent.com/SummersEpsilon/msinttypes/master/msinttypes-r26.zip'
$url64 = $url 
$path = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage "$packageName" "$url" "$path" "$url64"

try { 
  Install-ChocolateyEnvironmentVariable "INCLUDE" "$path" Machine
  
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw 
}