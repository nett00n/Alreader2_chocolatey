$packageName = 'Alreader2'
$url = 'http://www.alreader.com/downloads/AlReader2.Win32.en.zip'
$checksum = 'd5a975f843b97d1cab56a5e6a8336cde394db65405d1d0d684008bd2ab7ae757'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Install-ChocolateyShortcut -shortcutFilePath "$env:ALLUSERSPROFILE\Microsoft\Windows\Start Menu\Programs\Alreader2.lnk" "$unzipLocation\AlReader2.win32.en\AlReader2.exe"
