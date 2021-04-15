;------------------- Modifications -------------------

#IfWinNotExist
F2::
Send, {F2}
return

#IfWinNotExist
Scrolllock:: ;open vsc 
IfWinNotExist, ahk_exe code.exe 
	Run, "C:\Users\Nutzer\AppData\Local\Programs\Microsoft VS Code\Code.exe"
WinActivate, ahk_exe code.exe
return

;------------------- G Keys on my Keyboard ------------------

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

^F3:: 
Send, {^F3}
return

^F4:: 
Send, {^F4}
return

^F5:: ;this opens discord
IfWinNotExist, ahk_exe Discord.exe
	Run, Discord.exe
WinActivate, ahk_exe Discord.exe
return

^F6:: ;this script sends all dank memer commands for fast money
Send, pls Beg {enter}
Sleep, 2000
Send, pls hunt {enter}
Sleep, 2000
Send, pls fish {enter}
Sleep, 2000
Send, pls postmeme {enter}
Sleep, 2000
Send, F {enter}
Sleep, 2000
Send, pls highlow {enter}
Sleep, 2000
Send, high {enter}
Sleep, 2000
Send, pls search {enter}
return

^F7:: ;script to vote for angi in discord
Send, {!}m {@}angiii{#}0573 up {enter}
Sleep, 500
Send, {§}reminder Angi upvote 30 minutes {enter}
return

^F8:: ;sell script for dank memer (discord)
Send, pls sell skunk max {enter}
Sleep, 2000
Send, pls sell fish max {enter}
Sleep, 2000
Send, pls sell boar max {enter}
Sleep, 2000
Send, pls sell rarefish max {enter}
Sleep, 2000
Send, pls sell deer max {enter}
Sleep, 2000
Send, pls sell sand max {enter}
Sleep, 2000
Send, pls sell duck max {enter}
Sleep, 2000
Send, pls 

^F9:: ;just writes "join heist" for dank memer
Send, join{space}heist{enter}
return