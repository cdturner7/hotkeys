#Requires AutoHotkey v2.0

; Terminates all AutoHotkey processes
for process in ComObjGet("winmgmts:").ExecQuery("Select * from Win32_Process Where Name='AutoHotkey64.exe'")
{
    try ProcessClose(process.ProcessId)
}
