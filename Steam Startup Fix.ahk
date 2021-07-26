;I programmed this script, because sometimes steam opens and you can't access it
Process, Close , Steam.exe ;closes the steam process in the background completely
Sleep, 4000 ;waits (4secs) for steam to close
Run, "E:\Steam\Steam\Steam.exe" ;opens steam back up