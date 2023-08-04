# Symlinks
Run symlinks.ps1 to create symlinks for configs

## Individual Snips
Neovim:
```powershell
New-Item -ItemType SymbolicLink -Path "$Env:LOCALAPPDATA\nvim" -Target "$Env:HOMEPATH\dotfiles\nvim"
```

