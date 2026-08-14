$ErrorActionPreference = 'Stop';

$url64 = 'https://github.com/siderolabs/talos/releases/download/v1.13.8/talosctl-windows-amd64.exe'
$checksum64 = '857bb6ccb21212a21a067d83f375c9f4eda1ec75e4d0762c19da6ff0c4aa978b73b94f07d327ca6513bde496f041ff0e67005e91c7ace87eb231d9f13b4cc80a'
$checksumType64 = 'sha512'
$File = Join-Path (Join-Path $env:ChocolateyInstall (Join-Path 'lib' $env:ChocolateyPackageName)) 'talosctl.exe'
$file = Get-ChocolateyWebFile -PackageName $env:ChocolateyPackageName `
 -FileFullPath $File `
 -Url64bit $url64  `
 -CheckSum64 $checksum64 `
 -CheckSumType64 $checksumType64
