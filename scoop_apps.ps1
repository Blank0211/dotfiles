<#
  Name: scoop_apps.ps1
  Description: Powershell script to install programs using scoop.
#>

# Necessary buckets
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals

# Scoop can utilize aria2 for multi-connection downloads
scoop install aria2
# TAB completion for scoop commands in powershell
scoop install scoop-completion

# Utils
scoop install sumatrapdf mpc-be mpv xnview
scoop install 7zip everything autoruns bulk-crap-uninstaller
scoop install marktext ghostwriter notepadplusplus
scoop install losslesscut avidemux 

# Dev Tools
scoop install wezterm neovim git

# Networking
scoop install firefox qbittorrent telegram
scoop install simplewall

Write-Host "scoop_apps.ps1: Script finished." -ForegroundColor Green

