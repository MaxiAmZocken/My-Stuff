;------------------- G Keys on my Keyboard ------------------

#IfWinNotExist
^F1:: ;(G1) opens my 1. workspace in opera
Send, ^{Numpad1}
return

^F2:: ;(G2) opens my 2. workspace in opera
Send, ^{Numpad2}
return

^F3:: ;(G3) opens my 3. workspace in opera
Send, ^{Numpad3}
return

^F4:: ;(G4) this script opens spotify
IfWinNotExist, ahk_exe spotify.exe
	Run, C:\Users\Nutzer\AppData\Roaming\Spotify\Spotify.exe
WinActivate, ahk_exe spotify.exe
return

^F5:: ;(G5) this opens discord
IfWinNotExist, ahk_exe Discord.exe
	Run, Discord.exe
WinActivate, ahk_exe Discord.exe
return

^F6:: ;(G6) this script sends all dank memer commands for fast money
Send, pls Beg {enter}
Sleep, 2000
Send, pls hunt {enter}
Sleep, 2000
Send, pls fish {enter}
Sleep, 2000
Send pls dig {enter}
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

^F7:: ;(G7) script to vote for angi in discord
Send, {!}m @angiii{#}0573 up {enter}
Sleep, 500
Send, @Carl-bot{#}1536 reminder You can upvote again 30 minutes {enter}
return

^F8:: ;(G8) sell script for dank memer (discord)
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
Send, pls sell tidepod max {enter}

^F9:: ;(G9) just writes "join heist" for dank memer
Send, join{space}heist{enter}
return