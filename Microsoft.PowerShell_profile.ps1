$PSStyle.FileInfo.Directory = ""
$myvar = "myvar haha"
Import-Module scoop-completion


function ccp([string]$compiler = "clang") {
    $cmd = "$compiler waterfall.c -o a.exe -std=c18 -Wall -Wextra -pedantic -Wformat=2"
    Invoke-Expression $cmd
}

