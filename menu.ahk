#Requires AutoHotkey v2.0

MButton::ShowMenu  ; Bind middle mouse button to ShowMenu()

ShowMenu() {
    myMenu := Menu()
    myMenu.Add("Open TortoiseGit Log", (*) => Run(A_AhkPath . ' "' . A_ScriptDir . '\git-show-log-function.ahk"'))
    myMenu.Add("Coming Soon: Another Tool", (*) => MsgBox("Placeholder!"))

    myMenu.Show()
}
