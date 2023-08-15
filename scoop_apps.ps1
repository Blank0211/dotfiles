<#
  Name: scoop_apps.ps1
  Description: Powershell script to install programs using scoop
#>

# Necessary buckets
scoop bucket add extras
scoop bucket add versions
scoop bucket add sysinternals

# Scoop can utilize aria2 for multi-connection downloads
scoop install aria2

# Utils
scoop install sumatrapdf mpc-be mpv xnview everything

