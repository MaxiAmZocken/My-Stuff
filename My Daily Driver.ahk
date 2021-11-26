;------------------- Modifications -------------------

#IfWinNotExist
Scrolllock:: ;open vsc 
IfWinNotExist, ahk_exe code.exe 
	Run, "C:\Users\Nutzer\AppData\Local\Programs\Microsoft VS Code\Code.exe"
WinActivate, ahk_exe code.exe
return

#IfWinNotExist
+Scrolllock:: ;open sublime text 
IfWinNotExist, ahk_exe sublime_text.exe 
	Run, "C:\Program Files\Sublime Text\sublime_text.exe"
WinActivate, ahk_exe sublime_text.exe
return


#C:: ;open terminal
Run, "C:\WINDOWS\system32\cmd.exe"
Sleep, 500
WinActivate ahk_exe cmd.exe
Send, C{ShiftDown}{.}{ShiftUp} {enter} cd users {enter} cd nutzer {enter}
Send, color 0a {enter}
Send, title Beautiful Terminal {enter}
Send, cls {enter}
return

