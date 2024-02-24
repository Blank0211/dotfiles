<#
  Name: scoop_apps.ps1
  Description: Powershell script to install programs using scoop.
#>

# Necessary buckets
scoop install git # Required for installing buckets
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals

# Scoop can utilize aria2 for multi-connection downloads
scoop install aria2
# TAB completion for scoop commands in powershell
scoop install scoop-completion

# Media
scoop install sumatrapdf mpc-be mpv xnview
scoop install losslesscut

# Utils
scoop install 7zip everything autoruns
scoop install marktext ghostwriter notepadplusplus
scoop install bulk-crap-uninstaller

# Dev Tools
scoop install wezterm neovim

# Networking
scoop install firefox qbittorrent telegram
scoop install simplewall

Write-Host "scoop_apps.ps1: Script finished." -ForegroundColor Green

