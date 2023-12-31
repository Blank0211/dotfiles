$myvar = "haha wow"

# Remove highlight or visual style from directories
$PSStyle.FileInfo.Directory = "" 
Import-Module scoop-completion # scoop <tab> expansion in powershell
Set-Alias -Name vim -Value nvim # vim = nvim

# compile c files.
function ccp {
    <#
    .SYNOPSIS
    Compile C file with gcc or clang
    .Description
    Compiles a c file named "waterfall.c" with clang and outputs "a.exe".
    This is the default behaviour, which can be changed by passing
    relevant parameters.
    .Parameter Compiler
    Program to use for compiling.
    Default value: clang. any value other than gcc or clang is invalid.
    .Parameter InputFile
    The file to compile.
    Default value: "waterfall.c". 
    .Parameter OutputFile
    The name of output executable file
    #>
    param ([string]$Compiler = "clang",
           [string]$InputFile = "waterfall.c",
           [string]$OutputFile = "a.exe")

    if (($Compiler -eq "g") -or  ($Compiler -eq "gcc")) {
        $Compiler = "gcc"
    } else {
        $Compiler = "clang"
    }

    $flags = "-std=c18 -Wall -Wextra -pedantic -Wformat=2 -g"
    Invoke-Expression "$Compiler $InputFile -o $OutputFile $flags"
}

