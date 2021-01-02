#IfWinNotExist
^F1:: ;this script opens opera if its not opened and switch between tabs if opened
IfWinNotExist, ahk_exe opera.exe
	Run, opera.exe
if WinActive("ahk_exe opera.exe")
	Send ^{PgDn} 
WinActivate ahk_exe opera.exe
return

^F2:: ;this script opens spotify
IfWinNotExist, ahk_exe spotify.exe
	Run, C:\Users\Nutzer\AppData\Roaming\Spotify\Spotify.exe
WinActivate, ahk_exe spotify.exe
return

^F3:: ;this script opens the explorer
IfWinNotExist, ahk_class CabinetWClass
	Run, Explorer.exe
WinActivate, ahk_class CabinetWClass
return