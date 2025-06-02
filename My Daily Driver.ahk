;------------------- Informations -------------------

;The Script was created for my computer, some things may not work but most will work just fine 

;^ = STRG/CTRL
;# = WIN
;+ = SHIFT
;! = ALT

;To make Spotify work properly, you need to change "maxi_" to your username, which can be found at C:\Users\YOURUSERNAME

;------------------- Modifications -------------------

; open VS Code
#y:: {
    if !WinExist("ahk_exe code.exe") {
        Run "code"
        WinWait("ahk_exe WindowsTerminal.exe")
        Sleep 2000
        ProcessClose("WindowsTerminal.exe")
    }
    if WinExist("ahk_exe code.exe") && !WinActive("ahk_exe code.exe") {
        WinActivate("ahk_exe code.exe")
    }
}

; open Sublime Text
+#y:: {
    if !WinExist("ahk_exe sublime_text.exe") {
        Run '"C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Sublime Text.lnk"'
    }
    WinActivate("ahk_exe sublime_text.exe")
}

; open Chrome and switch through tabs
#c:: {
    if WinActive("ahk_exe chrome.exe") {
        Send "^{{Tab}}"
    }
    WinActivate("ahk_exe chrome.exe")
    if !WinExist("ahk_exe chrome.exe") {
        Run "chrome.exe"
    }
}

; open terminal
#x:: {
    Run "cmd.exe"
    Sleep 1000
    SendText "C:"
    Send "{Enter}"
    SendText "cd C:\Users\maxi_"
    Send "{Enter}"
}

; open Spotify
#s:: {
    if !WinActive("ahk_exe Spotify.exe") {
        WinActivate("ahk_exe Spotify.exe")
    }
    if !WinExist("ahk_exe Spotify.exe") {
        Run '"C:\Users\maxi_\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk"'
    }
}

; trigger sound device changer
#b:: {
    Send "^!{F11}"
}

; mouse button 4 -> n (snapping) when DaVinci Resolve is active
#HotIf WinActive("ahk_exe resolve.exe")
XButton2:: {
    Send "n"
}
#HotIf