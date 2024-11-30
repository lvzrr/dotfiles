@echo off
powershell.exe -NoProfile -Command "& {Start-Process pwsh.exe -ArgumentList '-Command \"\$Env:KOMOREBI_CONFIG_HOME = ''C:\Users\luxor\.config\komorebi''; komorebic start --ffm\"' -WindowStyle Hidden }"
powershell.exe -NoProfile -Command "& {Start-Process pwsh.exe -ArgumentList '-Command ""buttery-taskbar""' -WindowStyle Hidden}"
powershell.exe -NoProfile -Command "& {Start-Process pwsh.exe -ArgumentList '-Command ""komorebi-bar --config C:\Users\luxor\.config\komorebi\komorebi.bar.json ""' -WindowStyle Hidden}"
exit
