Um vom alten auf das neue Acronyms-Packe umzustellen (Notwendig, wenn ihr das Template vor Commit [772d739df975fb5e97f8cdb65000576602eb4e41](https://github.com/Bonk-Army/Template-LaTeX_PraktischeArbeit/commit/772d739df975fb5e97f8cdb65000576602eb4e41) schon verwendet habt), müsst ihr die alten acro-definitionen im File ```directories/acronyms.tex``` anpassen.
Die alte Struktur für die Definition war die folgende:
```
\acro{command}[short]{long}
```
Die neue Struktur ist folgendermaßen:
```
\DeclareAcronym{command}{
	short = short,
	long = long,
	tag = acronym
}
```
Um alle acronyms automatisch in die neue Form zu transformieren, könnt ihr das Regex-Replace-Tool von VS Code verwenden.
Drückt dazu Ctrl + R (Mac: Cmd + R), um das Replace-Fenster zu öffnen. Danach müsst ihr im oberen Textfenster auf ```.*``` drücken, um den Regex-Modus zu aktivieren.
Jetzt gebt ihr im oberen Fenster die Regex
```
\\acro\{(.*)\}\[(.*)\]\{(.*)\}
```
ein. Im unteren Fenster gebt ihr
```
\DeclareAcronym{$1}{
    short = $2,
    long = $3,
    tag = acronym
}
```
ein. Jetzt drückt ihr auf "Replace all" und voilà, eure acro-Definitionen sind aktualisiert.
