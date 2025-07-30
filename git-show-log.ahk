#Requires AutoHotkey v2.0

^F4:: {
    gitRepoPath := "C:\Users\Public\spring-boot-boilerplate"
    tortoiseGit := "C:\Program Files\TortoiseGit\bin\TortoiseGitProc.exe"
    
    RunFormat := '"' tortoiseGit '" /command:log /path:"' gitRepoPath '"'
    Run RunFormat
}
