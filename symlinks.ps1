<#
  Name: symlinks.ps1
  Description: Script for creating symlinks to dotfiles
#>

# Neovim config
$Path = "$Env:LOCALAPPDATA\nvim\"
$Target = "$Env:HOMEPATH\dotfiles\nvim\"
New-Item -ItemType SymbolicLink -Path $Path -Target $Target -Force

# Powershell profile
$Path = "$Env:HOMEPATH\Documents\PowerShell\"
$Target = "$Env:HOMEPATH\dotfiles\Microsoft.PowerShell_profile.ps1"
$Name = "Microsoft.PowerShell_profile.ps1"
New-Item -ItemType SymbolicLink -Path $Path -Name $Name -Target $Target -Force

# Wezterm config
$Path = "$Env:HOMEPATH\.config\wezterm\"
$Target = "$Env:HOMEPATH\dotfiles\wezterm\"
New-Item -ItemType SymbolicLink -Path $Path -Target $Target -Force

