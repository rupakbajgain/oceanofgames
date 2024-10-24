# Simple Analysis of Crypto Miner inside oceanofgames


To remove simply run. `counter.bat`

or directly

```
REG DELETE HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v "Windows Updates Service" /f
rmdir /s /q "%AppData%\Windows Updates Files\"
```

This thing is installed during extraction step. it will only run in next start and if there is internet connection.
