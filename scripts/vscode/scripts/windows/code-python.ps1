Function code-python
{
    param(
        [Parameter(Mandatory)]
        $Param
    )

    cmd.exe /c code --extensions-dir $home/vscode_profiles/code-python/exts --user-data-dir $home/vscode_profiles/code-python/data $args[0]
}

code-python $args