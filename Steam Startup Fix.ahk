#SingleInstance, force
;I programmed this script, because sometimes steam opens and you can't access it
MsgBox, 0, Steam Startup Fix, Trying to kill Steam.exe process, 2
Process, Close , Steam.exe ;closes the steam process in the background completely
Sleep, 4000 ;waits (4secs) for steam to close
MsgBox, 0, Steam Startup Fix, Starting Steam.exe, 2
Run, "E:\Steam\Steam\Steam.exe" ;opens steam back up