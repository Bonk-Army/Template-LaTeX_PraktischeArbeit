Function Get-Folder($initialDirectory) {
    [void] [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms')
    $FolderBrowserDialog = New-Object System.Windows.Forms.FolderBrowserDialog
    $FolderBrowserDialog.RootFolder = 'MyComputer'
    if ($initialDirectory) { 
        $FolderBrowserDialog.SelectedPath = $initialDirectory 
        $FolderBrowserDialog.Description = "Hier bitte deinen Zotero 'storage' Folder Auswählen!!!"
    }
    [void] $FolderBrowserDialog.ShowDialog()
    if ($FolderBrowserDialog.Equals($initalDirectory)){
        exit
    }
    if ($FolderBrowserDialog.SelectedPath.Contains("Zotero") -and $FolderBrowserDialog.SelectedPath.Contains("storage")){
        return $FolderBrowserDialog.SelectedPath
    }else{
        [System.Windows.MessageBox]::Show('Falscher Ordner!')
        exit
    }

}

$sourceSources = Get-Folder "C:\Users\$($env:USERNAME)\Zotero"
$destinationSources = ".\1_Sources\"

Get-Childitem $sourceSources -recurse -verbose -filter "*.pdf" | %{
                   Copy-Item -Path $_.FullName -Destination $destinationSources}