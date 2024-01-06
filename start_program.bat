@ECHO OFF
PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""C:\lfc_manager-poolec\lfc_manager-poolec\install_mods.ps1""' -Verb RunAs}"
PAUSE