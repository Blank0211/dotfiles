$PSStyle.FileInfo.Directory = ""
$myvar = "myvar haha"
Import-Module scoop-completion


function ccp {
    param ([string]$Compiler = "clang",
           [string]$InputFile = "waterfall.c",
           [string]$OutputFile = "a.exe")

    $cmd = "$Compiler $InputFile -o $OutputFile -std=c18 -Wall -Wextra -pedantic -Wformat=2"
    Invoke-Expression $cmd
}

