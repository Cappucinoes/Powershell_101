$disky = (Get-PSDrive).Root
$disky

foreach ($partition in $disky) {
    cd $partition

    foreach ($file in $(Get-ChildItem -Recurse)) {
        if ($file.Name -eq "heslo.txt") {
            cat $file
            
        }
        
    }  

}