#Requires AutoHotkey v2.0

repoDir := A_ScriptDir
currentScript := A_ScriptFullPath

Loop Files repoDir "\*.ahk" {
    if (A_LoopFileFullPath != currentScript 
        && !InStr(A_LoopFileName, "startup_setup")
        && !InStr(A_LoopFileName, "function")) {
        && !InStr(A_LoopFileName, "exit-all-ahk")) {
        Run(A_AhkPath . ' "' . A_LoopFileFullPath . '"')
    }
}
