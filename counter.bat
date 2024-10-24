REG DELETE HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Windows Updates Service" /f
rmdir /s /q "%AppData%\Windows Updates Files\"