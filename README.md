# Symlinks
Run symlinks.ps1 to create symlinks for configs

Neovim:
```powershell
New-Item -ItemType SymbolicLink -Path "$Env:LOCALAPPDATA\nvim" -Target "$Env:HOMEPATH\dotfiles\nvim"
```
# Snippets
Run scoop_apps.ps1 without downloading repo:
```powershell
iwr https://raw.githubusercontent.com/Blank0211/dotfiles/master/scoop_apps.ps1 | iex
```

# TODO

