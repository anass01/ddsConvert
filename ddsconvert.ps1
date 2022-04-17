param ($path, $ext)
$origin = pwd
cd $path
Get-ChildItem -File  -Filter '*.dds'| % {magick convert $_.name $_.name.Replace(".dds","."+$ext)}
Invoke-Item $path
cd $origin