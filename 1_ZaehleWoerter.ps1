Get-ChildItem * -Include *.statistic -Recurse | Remove-Item -Exclude *.tex*

$allWords = 0

Get-ChildItem -Path ".\pages\content\*.tex" -Include "Kapitel*.tex" | ForEach-Object {
    $filename = [System.IO.Path]::GetFileName("$_")
    echo "Counting words in $filename"
    $result = Get-Content $_ | Measure-Object -Word -IgnoreWhiteSpace
    $wordCount = $result.Words
    $allwords += $wordCount
    echo "Result: $wordCount" 
 }  

 echo "Combined Word Count for the Documentation : $allWords"
 
 New-Item -Name "ProjektArbeit_WORDCOUNT__${allWords}__.statistic" 