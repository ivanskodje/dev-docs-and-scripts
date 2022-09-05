Function code-react
{
    param(
        [Parameter(Mandatory)]
        $Param
    )

    cmd.exe /c code --extensions-dir $home/vscode_profiles/code-react/exts --user-data-dir $home/vscode_profiles/code-react/data $args[0]
}

code-react $args