#MaxThreadsPerHotkey 2
F24:: ;with this hotkey you can activate the autoclicker for the right mousebutton 
Toggle := !Toggle
loop
{
    If not Toggle
        break
    Send, {RButton}
}
return

#MaxThreadsPerHotkey 2
F23:: ;with this hotkey you can activate the autoclicker for the left mousebutton 
Toggle := !Toggle
loop
{
    If not Toggle
        break
    Click,
}
return
