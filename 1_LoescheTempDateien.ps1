function Get-ScriptDirectory{
    $Invocation = (Get-Variable MyInvocation -Scope 1).Value
    Split-Path $Invocation.MyCommand.Path
}
 
$path = (Get-ScriptDirectory)
 
cd $path

Get-ChildItem * -Include *.aux -Recurse | Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.bbl -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.blg -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.for -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.glg -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.glo -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.gls -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.idx -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.ist -Recurse |Remove-Item -Exclude *bericht.ist*
Get-ChildItem * -Include *.ilg -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.ind -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.lof -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.log -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.lol -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.nav -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.snm -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.lot -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.run.xml -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.gz -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.toc -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *-blx.bib -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.equ -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.mw -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.tdo -Recurse |Remove-Item -Exclude *.tex*
Get-ChildItem * -Include *.upa -Recurse |Remove-Item -Exclude *.tex*