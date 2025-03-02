#Requires AutoHotkey v2.0

;open vsc
#y:: {
    if !WinExist("ahk_exe code.exe") {
        Run("code")
        WinWait("ahk_exe WindowsTerminal.exe")
        Sleep(2000)
        ProcessClose("WindowsTerminal.exe")
    }
    if WinExist("ahk_exe code.exe") && !WinActive("ahk_exe code.exe") {
        WinActivate("ahk_exe code.exe")
    }
}

;open chrome and switch through tabs
#C:: {
    if WinActive("ahk_exe chrome.exe") {
        Send("^#{Tab}") ; Strg + Tab für Tab-Wechsel
    }
    if !WinExist("ahk_exe chrome.exe") {
        Run("chrome.exe")
    }
    WinActivate("ahk_exe chrome.exe")
}

;open spotify
#s:: {
    if !WinActive("ahk_exe Spotify.exe") {
        WinActivate("ahk_exe Spotify.exe")
    }
    if !WinExist("ahk_exe Spotify.exe") {
        Run("C:\Users\maxi_\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk")
    }
}
