# NB: Run this as Administrator!

# Change this if you want a different script folder
$SCRIPT_DIR = "C:\bin"

$folderExists = Test-Path -Path $SCRIPT_DIR -PathType Container

if ( !$folderExists ) {
    $timeStamp = (Get-Date -format MM/dd/yy-hhmmss)
    $ENV_FILE_BACKUP = "Env_PATH-" + $timeStamp + ".txt"
    echo "[Setup] Creating a Env Path backup in home directory: $ENV_FILE_BACKUP"
    $Env:PATH >> $home/$ENV_FILE_BACKUP

    echo "[Setup] Creating new script folder at $SCRIPT_DIR"
    mkdir $SCRIPT_DIR

    echo "[Setup] Adding the $SCRIPT_DIR to System Environment Path"
    [Environment]::SetEnvironmentVariable("PATH", $Env:PATH + ";" + $SCRIPT_DIR, [EnvironmentVariableTarget]::Machine)
}

echo "[Setup] Copying over scripts to the $SCRIPT_DIR folder"
Copy-Item "scripts\windows\*" -Destination "$SCRIPT_DIR"

echo "[Setup] Done, Restart PowerShell to get started using the scripts!"