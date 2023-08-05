# Symlinks
Run symlinks.ps1 to create symlinks for configs

## Individual Snips
Neovim:
```powershell
New-Item -ItemType SymbolicLink -Path "$Env:LOCALAPPDATA\nvim" -Target "$Env:HOMEPATH\dotfiles\nvim"
```

# TODO
-   Neovim:
    1.  Add autocommand to execute :loadview on bufenter.
    1.  Automate compiling c programs & show output in floating window.

