$PSStyle.FileInfo.Directory = ""
$myvar = "myvar haha"
Import-Module scoop-completion


function ccp {
    param ([string]$Compiler = "clang",
           [string]$InputFile = "waterfall.c",
           [string]$OutputFile = "a.exe")

    if (($Compiler -cne "clang") -and ($Compiler -cne "gcc")) {
        Write-Output "Invalid value for -compiler param: $Compiler"
        return
    }
    $flags = "-std=c18 -Wall -Wextra -pedantic -Wformat=2"
    $cmd = "$Compiler $InputFile -o $OutputFile $flags"
    Invoke-Expression $cmd
}

