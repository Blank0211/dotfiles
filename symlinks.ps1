<#
  Name: symlinks.ps1
  Description: Script for creating symlinks to dotfiles
#>

# ------------------------
# [[ Args for New-Item ]]
# ------------------------
$NvimPath = "$Env:LOCALAPPDATA\nvim\"
$NvimTarget = "$Env:HOMEPATH\dotfiles\nvim\"

$PSProfilePath = "$Env:HOMEPATH\Documents\PowerShell\"
$PSProfileTarget = "$Env:HOMEPATH\dotfiles\Microsoft.PowerShell_profile.ps1"
$PSProfileName = "Microsoft.PowerShell_profile.ps1"

$WeztermPath = "$Env:HOMEPATH\.config\wezterm\"
$WeztermTarget = "$Env:HOMEPATH\dotfiles\wezterm\"

# ----------------------
# [[ Create Symlinks ]]
# ----------------------
New-Item -ItemType SymbolicLink -Path $NvimPath -Target $NvimTarget -Force
New-Item -ItemType SymbolicLink -Path $PSProfilePath -Name $PSProfileName -Target $PSProfileTarget -Force
New-Item -ItemType SymbolicLink -Path $WeztermPath -Target $WeztermTarget -Force

