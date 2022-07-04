;------------------- Modifications -------------------

;open vsc 
Scrolllock:: 
IfWinNotExist, ahk_exe code.exe 
	Run, "C:\Users\Nutzer\AppData\Local\Programs\Microsoft VS Code\Code.exe"
WinActivate, ahk_exe code.exe
return

;open sublime text 
+Scrolllock::
IfWinNotExist, ahk_exe sublime_text.exe 
	Run, "C:\Program Files\Sublime Text\sublime_text.exe"
WinActivate, ahk_exe sublime_text.exe
return

;open terminal
#Y:: 
Run, "C:\WINDOWS\system32\cmd.exe"
Sleep, 500
WinActivate ahk_exe cmd.exe
Send, C{ShiftDown}{.}{ShiftUp} {enter} cd users {enter} cd nutzer {enter}
Send, color 0a {enter}
Send, title Beautiful Terminal {enter}
Send, cls {enter}
return

;open chrome and switch through tabs
#C:: 
IfWinActive, ahk_exe chrome.exe
	Send, ^{Tab}
WinActivate, ahk_exe chrome.exe
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe
return

;get color
#Z:: 
MouseGetPos, MousePos1X, MousePos1Y
PixelGetColor, FoundColor, %MousePos1X%, %MousePos1Y%, CoordMode
Clipboard = %FoundColor%, %MousePos1X%, %MousePos1Y%
MsgBox, Copied %FoundColor%, %MousePos1X%, %MousePos1Y% into Clipboard
return

;give member bonus xp
;this script works most of the time, but sometimes discord takes a bit longer
;or your computer is slower and you need to higher the sleep time
#B::
InputBox, username,, Please Enter a Username`n(Name needs to be close)
WinActivate, ahk_exe discord.exe
Send, /bonus member
Sleep, 600
Send, {enter}
Sleep, 300
Send, %username%{enter}
Sleep, 200
Send, give{enter}750{enter}
return

;mouse button 4 -> n (snapping) when davinci resolve is open
#IfWinActive, ahk_exe resolve
XButton2::
Send, n
return