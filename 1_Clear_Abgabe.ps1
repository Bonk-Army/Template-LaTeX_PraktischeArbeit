#https://stackoverflow.com/questions/15246602/powershell-delete-all-items-except-those-in-specific-subdirectories

$folder = ".\!!_Abgabe_!!"
$exclude = 'Quellcode'

Get-ChildItem -Path $folder -Exclude $exclude | Remove-Item -Recurse -Force
