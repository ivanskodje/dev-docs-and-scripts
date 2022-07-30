Function gitch
{
    param(
        [Parameter(Mandatory)]
        $Param
    )

    cmd.exe /c git checkout $args[0]
}

gitch $args