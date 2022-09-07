;------------------- Informations -------------------

;The Scipt was created for my computer, which has 2 Monitors, this is pretty important for the discord Scripts, because of the coordinates
;Everything should work fine, because the coordinates are bound to the window, but I can't guarantee for anything

;------------------- Command List -------------------

;Ctrl+Alt+1 -> Previous Song
;Ctrl+Alt+2 -> Play/Pause Music
;Ctrl+Alt+3 -> Next Song
;Win+Y -> open Visual Studio Code or activate it if in the background
;Shift+Win+Y -> open Sublime Text or activate it if in the background
;Win+C -> open Google Chrome or activate it if in the background (if active, you can switch through tabs)
;Win+X -> open the terminal with green text and a custom title
;Win+Z -> get color and position of the current cursor position and copy to clipboard
;Win+U -> Smart Upvote Script for discord
;Win+B -> brings up a InputBox and after typing a username it pastes a command to give a user bonus xp in discord (pretty specific)
;Win+N -> Giveaway Command for Discord
;Win+S -> open Spotify or activate it if in the background
;MButton 4 -> If Davinci Resolve is opened, the button is n
;Alt+1 -> If csgo is opened, changes volume to 0.1
;Alt+2 -> If csgo is opened, changes volume to 0.2
;Alt+3 -> If csgo is opened, changes volume to 0.25
;Alt+9 -> If csgo is opened and in private game, creates a game to train smokes (unlimited time+ammo)
;Alt+0 -> If csgo is opened, binds jumpthrow to mouse5

;------------------- Modifications -------------------

;previous track
^!1::
Send, {Media_Prev}
return

;play/pause
^!2::
Send, {Media_Play_Pause}
return

;next track
^!3::
Send, {Media_Next}
return

;open vsc
#y:: 
IfWinNotExist, ahk_exe code.exe 
	Run, "C:\Users\Nutzer\AppData\Local\Programs\Microsoft VS Code\Code.exe"
WinActivate, ahk_exe code.exe
return

;open sublime text 
+#y::
IfWinNotExist, ahk_exe sublime_text.exe 
	Run, "C:\Program Files\Sublime Text\sublime_text.exe"
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

;open terminal (with a few additions)
#X:: 
Run, "C:\WINDOWS\system32\cmd.exe"
Sleep, 500
WinActivate ahk_exe cmd.exe
Send, C{ShiftDown}{.}{ShiftUp} {enter} cd users {enter} cd nutzer {enter}
Send, color 0a {enter}
Send, title Beautiful Terminal {enter}
Send, cls {enter}
return

;open spotify and closes if click again
#s::
IfWinActive, ahk_exe Spotify.exe
{
	Send, #{Down}
}
IfWinNotActive, ahk_exe Spotify.exe
{
	WinActivate, ahk_exe Spotify.exe
}
IfWinNotExist, ahk_exe Spotify.exe
{
	Run, C:\Users\Nutzer\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify
}
return

;get color and position of the current cursor position
#Z:: 
MouseGetPos, MousePos1X, MousePos1Y
PixelGetColor, FoundColor, %MousePos1X%, %MousePos1Y%, CoordMode
Clipboard = %FoundColor%, %MousePos1X%, %MousePos1Y%
MsgBox, Copied %FoundColor%, %MousePos1X%, %MousePos1Y% into Clipboard
return

;upvote script for discord
#u::
WinActivate ahk_exe discord.exe
PixelGetColor, color2, 1, 190
If(color2 == 0xFFFFFF)
{
	ToolTip, Already in correct Discord Server
}
Else
{
	ImageSearch, FoundImageX, FoundImageY, 0, 0, 1919, 1023, D:\Programming\Git\my-stuff\Resources\Servericon.png
	FoundimageX += 20
	FoundimageY += 20
	Click, %FoundImageX%, %FoundImageY%
}
Sleep, 400
MouseMove, 192, 494
Send, {WheelDown}
Sleep, 200
PixelGetColor, color, 338, 88
while(color != 0x252220)
{
	PixelGetColor, color, 338, 88
	Send, {WheelUp}
}
ToolTip, Found the highest Spot
Sleep, 200
Click, 198, 488
Sleep, 200
ToolTip, 
Send, /upvote
loop
{
ImageSearch, FoundImageX, FoundImageY, 0, 0, 1919, 1023, D:\Programming\Git\my-stuff\Resources\UpvoteScreen.png
if (ErrorLevel = 2)
	Sleep, 100
else if (ErrorLevel = 1)
	Sleep, 100
else
    break
}
Send, {Tab}Angi{enter}{enter}
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

;start a giveaway on the discord server with the new slash command
#N::
WinActivate, ahk_exe discord.exe
Send, /gstart
Sleep, 600
Send, {enter}
Sleep, 300
Send, 5d{enter}
Sleep, 200
Send, 3{enter}
Sleep, 200
Send, <750>{enter}
return

;mouse button 4 -> n (snapping) when davinci resolve is open
#IfWinActive, ahk_exe resolve.exe
XButton2::
Send, n
return

;csgo volume changer (my console key is "#" so this may needs to be changed)
#IfWinActive, ahk_exe csgo.exe
!1:: ;deathmath (chill) volume
Send, {#}^A{BackSpace}volume 0.1{enter}{Escape}
return
!2:: ;competitive volume
Send, {#}^A{BackSpace}volume 0.2{enter}{Escape}
return
!3:: ;full focus volume
Send, {#}^A{BackSpace}volume 0.25{enter}{Escape}
return
!9:: ;create round with unlimited time and ammo + buy smoke
Send, {#}^A{BackSpace}
SendRaw, sv_cheats 1; mp_roundtime_defuse 60; mp_freezetime 0; sv_infinite_ammo 1; mp_buy_anywhere 1; sv_grenade_trajectory 1; mp_restartgame 1
Send, {enter}
Sleep, 2000
Send, give weapon_smokegrenade{enter}{Escape}
return
!0:: ;bind jumpthrow
Send, {#}^A{BackSpace}
SendRaw, alias "+jumpthrow" "+jump;-attack"; alias "-jumpthrow" "-jump"; bind mouse5 "+jumpthrow" 
Send, {enter}{Escape}
return