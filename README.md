# Symlinks
Run symlinks.ps1 to create symlinks for configs

Neovim:
```powershell
New-Item -ItemType SymbolicLink -Path "$Env:LOCALAPPDATA\nvim" -Target "$Env:HOMEPATH\dotfiles\nvim" -Force
```

PowerShell profile:
```powershell
New-Item -ItemType SymbolicLink -Path "$Env:HOMEPATH\Documents\PowerShell\" -Name "Microsoft.PowerShell_profile.ps1" -Target "$Env:HOMEPATH\dotfiles\PS_profile.ps1" -Force
```

Wezterm config:
```
New-Item -ItemType Symboliclink -Path "$Env:HOMEPATH\.config\wezterm\" -Target "$Env:HOMEPATH\dotfiles\wezterm\" -Force
```
# Snippets
Run scoop_apps.ps1 without downloading repo:
```powershell
iwr https://raw.githubusercontent.com/Blank0211/dotfiles/master/scoop_apps.ps1 | iex
```

# TODO

