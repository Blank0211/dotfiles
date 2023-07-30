<#
  Name: symlinks.ps1
  Description: Script for creating symlinks to dotfiles
#>

# ________________________________
# [[Paths for Symlinks & Targets]]
# ________________________________
$NvimPath = "$Env:LOCALAPPDATA\nvim\"
$NvimTarget = "$Env:HOMEPATH\dotfiles\nvim\"

$PSProfilePath = "$Env:HOMEPATH\Documents\PowerShell\"
$PSProfileTarget = "$Env:HOMEPATH\dotfiles\Microsoft.PowerShell_profile.ps1"
$PSProfileName = "Microsoft.PowerShell_profile.ps1"


# Nvim config
New-Item -ItemType SymbolicLink -Path $NvimPath -Target $NvimTarget
# PowerShell profile
New-Item -ItemType SymbolicLink -Path $PSProfilePath -Name $PSProfileName -Target $PSProfileTarget

