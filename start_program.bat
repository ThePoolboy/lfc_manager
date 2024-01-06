@ECHO OFF

PowerShell.exe -NoProfile -Command "& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""%~install_mods.ps1""' -Verb RunAs}"

PAUSE