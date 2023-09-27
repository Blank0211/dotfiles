# Remove highlight or visual style from directories
$PSStyle.FileInfo.Directory = "" 
Import-Module scoop-completion
Set-Alias -Name vim -Value nvim

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

    # check if $compiler is clang or gcc, if not return.
    if (($Compiler -cne "clang") -and ($Compiler -cne "gcc")) {
        Write-Output "Invalid value for -compiler param: $Compiler"
        return
    }

    $flags = "-std=c18 -Wall -Wextra -pedantic -Wformat=2"
    Invoke-Expression "$Compiler $InputFile -o $OutputFile $flags"
}

