#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

If (volta = 100)
{
    WinClose, Cadastro de Matriz Curricular
    Sleep, 333

    WinWaitClose, Cadastro de Matriz Curricular
    Sleep, 333

    WinWaitActive, JACAD - Sistema Educacional %swa% ; Ativa a tela principal do SWA
    Sleep, 333
    
    WinClose, JACAD - Sistema Educacional %swa%
    Sleep, 333
    
    WinWaitClose, JACAD - Sistema Educacional %swa%
    Sleep, 333
}