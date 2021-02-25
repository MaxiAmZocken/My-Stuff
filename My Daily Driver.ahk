;------------------- Modifications -------------------

F2::
Send, +{F2} ;in Rainbow Six you need to press Shift+F2 to open the ingame menu
return

#IfWinNotExist
Scrolllock:: ;open vsc 
IfWinNotExist, ahk_exe code.exe 
	Run, "C:\Users\Nutzer\AppData\Local\Programs\Microsoft VS Code\Code.exe"
WinActivate, ahk_exe code.exe
return

;------------------- Program Switcher & Other Stuff ------------------

#IfWinNotExist
^F13:: ;this script opens opera if its not opened and switch between tabs if opened
IfWinNotExist, ahk_exe opera.exe
	Run, opera.exe
if WinActive("ahk_exe opera.exe")
	Send ^{PgDn} 
WinActivate ahk_exe opera.exe
return

^F14:: ;this script opens spotify
IfWinNotExist, ahk_exe spotify.exe
	Run, C:\Users\Nutzer\AppData\Roaming\Spotify\Spotify.exe
WinActivate, ahk_exe spotify.exe
return

^F15:: ;this script opens the explorer
IfWinNotExist, ahk_class CabinetWClass
	Run, Explorer.exe
WinActivate, ahk_class CabinetWClass
return

^F4:: ;this is not a program, but i put it here because it's Strg+F4
Send, {!}m {@}angiii{#}0573 up {enter}
Sleep, 500
Send, {§}reminder Angi upvote 30 minutes {enter}
return

^F16:: ;this script sends all dank memer commands for fast money
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


^F17:: ;dank memer script to sell stuff
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
return

^F18:: ;this script opens discord
IfWinNotExist, ahk_exe Discord.exe
	Run, Discord.exe
WinActivate, ahk_exe Discord.exe
return