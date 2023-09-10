$PSStyle.FileInfo.Directory = ""
$myvar = "myvar haha"
Import-Module scoop-completion


# compile c files.
function ccp {
    param ([string]$Compiler = "clang",
           [string]$InputFile = "waterfall.c",
           [string]$OutputFile = "a.exe")

    # check if $compiler is clang or gcc, if not return.
    if (($Compiler -cne "clang") -and ($Compiler -cne "gcc")) {
        Write-Output "Invalid value for -compiler param: $Compiler"
        return
    }

    $flags = "-std=c18 -Wall -Wextra -pedantic -Wformat=2"
    Invoke-Expression "$Compiler $InputFile -o $OutputFile $flags"
}

