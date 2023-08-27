;------------------- Informations -------------------

;The Scipt was created for my computer, some things may not work but most will work just fine 

;^ = STRG/CTRL
;# = WIN
;+ = SHIFT
;! = ALT

;to make spotify work properly, you need to change "maxi_" to your username, which can be found at C:\Users\YOURUSERNAME

;------------------- Modifications -------------------

;open vsc
#y:: 
IfWinNotExist, ahk_exe code.exe 
	Run, code
	WinWait, ahk_exe WindowsTerminal.exe
	Sleep, 2000
	Process, Close, WindowsTerminal.exe
IfWinExist ahk_exe code.exe
	IfWinNotActive, ahk_exe code.exe
		WinActivate, ahk_exe code.exe
return

;open sublime text 
+#y::
IfWinNotExist, ahk_exe sublime_text.exe 
	Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sublime Text.lnk"
WinActivate, ahk_exe sublime_text.exe
return

;open chrome and switch through tabs
#C::
IfWinActive, ahk_exe chrome.exe
	Send, ^{Tab}
WinActivate, ahk_exe chrome.exe
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe
return

;open terminal
#X:: 
Run, cmd.exe
Sleep, 1000
SendRaw, C:
Send, {enter}
SendRaw, cd C:\Users\maxi_
Send, {enter}
return

;open spotify
#s::
IfWinNotActive, ahk_exe Spotify.exe
	WinActivate, ahk_exe Spotify.exe
IfWinNotExist, ahk_exe Spotify.exe
	Run, "C:\Users\maxi_\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk"      
return

;get color and position of the current cursor position
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
InputBox, username,, Please enter the name of the person`n(You can enter the username or nickname on the server)
if ErrorLevel
	MsgBox, Action was canceled
else {
	WinActivate, ahk_exe discord.exe
	Send, /bonus member
	Sleep, 600
	Send, {enter}
	Sleep, 300
	Send, %username%{enter}
	Sleep, 200
	Send, give{enter}750{enter}
	}
return

;mouse button 4 -> n (snapping) when davinci resolve is open
#IfWinActive, ahk_exe resolve.exe
XButton2::
Send, n
return

;csgo volume changer (my console key is "#" so this may needs to be changed)
#IfWinActive, ahk_exe csgo.exe
!1:: ;deathmath (chill) volume
Send, {#}^A{BackSpace}volume 0.07{enter}{Escape}
return
!2:: ;competitive volume
Send, {#}^A{BackSpace}volume 0.19{enter}{Escape}
return
!3:: ;full focus volume
Send, {#}^A{BackSpace}volume 0.22{enter}{Escape}
return
!9:: ;create round with unlimited time and ammo + buy smoke --> script https://pastebin.com/Y0wnNkYE
Send, {#}^A{BackSpace}exec{Space}training{enter}{Escape}
return
!0:: ;bind jumpthrow --> script https://pastebin.com/L5ytP2pF
Send, {#}^A{BackSpace}exec{Space}jumpthrow{enter}{Escape}
return