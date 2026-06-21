#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

If (volta = 100)
{
    IniRead, usu, C:\Bots\config.ini, Acesso SWA, vUsu_swa
    IniRead, senha, C:\Bots\config.ini, Acesso SWA, vSenha_swa

    Run, "C:\Program Files\Java\jre-1.8\bin\javaws.exe" -localfile -J-Djnlp.application.href=https://auden.jacad.com.br:443/academico/jacad/download "C:\Users\Acadêmico\AppData\LocalLow\Sun\Java\Deployment\cache\6.0\4\aaa3104-4730e770"

    WinWaitActive, Login
    Sleep, 333

    WinSet, AlwaysOnTop, Toggle, Login
    Sleep, 333

    While Clipboard
    {
        Clipboard :=
    }

    While !Clipboard
    {
        Clipboard := usu
        ClipWait, 1
    }

    ControlSend, , {CtrlDown}{v}{CtrlUp}, Login

    While Clipboard
    {
        Clipboard :=
    }

    ControlSend, , {Tab}, Login
    Sleep, 333

    While !Clipboard
    {
        Clipboard := senha
        ClipWait, 1
    }

    ControlSend, , {CtrlDown}{v}{CtrlUp}, Login

    While Clipboard
    {
        Clipboard :=
    }

    ControlSend, , {Enter}, Login

    WinSet, AlwaysOnTop, Off, Login

    WinWaitNotActive, Login

    WinWaitActive, Selecionar Organização

    WinSet, AlwaysOnTop, Toggle, Selecionar Organização
    Sleep, 333

    ControlSend, , {Enter}, Selecionar Organização

    WinSet, AlwaysOnTop, Off, Selecionar Organização

    WinWaitClose, Selecionar Organização

    WinWaitClose, Login

    volta := 1
}