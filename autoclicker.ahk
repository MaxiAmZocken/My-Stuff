#MaxThreadsPerHotkey 2
F24::
Toggle := !Toggle
loop
{
    If not Toggle
        break
    Send, {RButton}
}
return

#MaxThreadsPerHotkey 2
F23::
Toggle := !Toggle
loop
{
    If not Toggle
        break
    Click,
}
return