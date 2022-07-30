Function gitchb
{
    param(
        [Parameter(Mandatory)]
        $Param
    )

    cmd.exe /c git checkout -b $args[0]
}

gitchb $args