$ErrorActionPreference = 'Stop';

$packageName = 'openmw'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'exe'
  url64bit       = 'https://github.com/OpenMW/openmw/releases/download/openmw-0.51.0/OpenMW-0.51.0-Windows-x64.exe'

  checksum64     = '56f6ccda630860a3197fb10c802e047740ea92230474dc442a39674e227f9ce7'
  checksumtype64 = 'sha256'

  silentArgs     = "/S"
  validExitCodes = @(0)

  registryUninstallerKey = 'OpenMW 0.51.0'
}

Install-ChocolateyPackage @packageArgs