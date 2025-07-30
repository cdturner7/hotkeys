#Requires AutoHotkey v2.0

startup := A_Startup "\hotkeys_launcher.lnk"
target := A_ScriptDir "\start.ahk"

; Create a shortcut
FileCreateShortcut target, startup
MsgBox "Startup shortcut created at:`n" startup
