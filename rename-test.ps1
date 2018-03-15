$docs = Get-ChildItem 'C:\z'
$names = Get-Content 'C:\zz\names.txt'
$names2 = Get-Content 'C:\zz\names2.txt'
$i = 0
$ii = 0
$iii = 0
$a = @(1..($docs).count)
$b = @(1..($names).count)
$c = @(1..($names2).count)


foreach ($doc in $docs) {
    $a[$i] = $doc.FullName
    $a[$i]
    $i++
}

foreach ($name in $names) {
    $b[$ii] = $name
    $b[$ii]
    $filename = $b[$ii] + ".txt"
    Rename-Item -Path $a[$ii] -NewName $filename
    $ii++
}

#v2 renames item to ABCDE
<#
foreach ($name in $names2) {
    $c[$iii] = $name
    $filename = $c[$iii] + ".txt"
    Rename-Item -Path $c[$iii] -NewName $filename
    $iii++
}
#>