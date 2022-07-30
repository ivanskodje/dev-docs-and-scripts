
# NB: Run this as Administrator!

$scripts = "git", "vscode"

# Change this if you want a add them in a different script folder
$SCRIPT_DIR = "C:\bin"

$folderExists = Test-Path -Path $SCRIPT_DIR -PathType Container

if ( !$folderExists ) {
    $timeStamp = (Get-Date -format MM/dd/yy-hhmmss)
    $ENV_FILE_BACKUP = "Env_PATH-" + $timeStamp + ".txt"
    echo "[Install] Creating a Env Path backup in home directory: $ENV_FILE_BACKUP"
    $Env:PATH >> $home/$ENV_FILE_BACKUP

    echo "[Install] Creating new script folder at $SCRIPT_DIR"
    mkdir $SCRIPT_DIR

    echo "[Install] Adding the $SCRIPT_DIR to System Environment Path"
    [Environment]::SetEnvironmentVariable("PATH", $Env:PATH + ";" + $SCRIPT_DIR, [EnvironmentVariableTarget]::Machine)
}

echo "[Install] Copying over all scripts to the $SCRIPT_DIR folder"
foreach ($script in $scripts) {
    echo "[Install] Installing scripts for $script..."
    Copy-Item "$script\scripts\windows\*" -Destination "$SCRIPT_DIR"
}

echo "[Install] Done, Restart PowerShell to get started using the scripts!"