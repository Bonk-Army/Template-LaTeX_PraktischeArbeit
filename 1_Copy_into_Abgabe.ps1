$sourceSources = ".\1_Sources\"
$destinationSources = ".\!!_Abgabe_!!\Quellensicherung\"

$sourceBerichte = ".\zfiles\Dokumente\*"
$destinationBerichte = ".\!!_Abgabe_!!\Berichte\"

$sourceProjektarbeit = ".\*"
$destinationProjektarbeit = ".\!!_Abgabe_!!\"

Copy-Item -Path $sourceSources -Recurse -Destination $destinationSources
New-Item -ItemType Directory -Force -Path $destinationBerichte
Copy-Item -Path $sourceBerichte -Filter "Teil-A.pdf*" -Force -Destination $destinationBerichte
Copy-Item -Path $sourceBerichte -Filter "Teil-B.pdf*" -Force -Destination $destinationBerichte
Copy-Item -Path $sourceProjektarbeit -Filter "*Projektarbeit_*.pdf"  -Recurse -Destination $destinationProjektarbeit