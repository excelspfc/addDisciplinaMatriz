#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

WinActivate, Cadastro de Matriz Curricular
Sleep, 333

bot.ClicarControle("CoordRegSemestre")

Loop, 10
{
    bot.CopiaClipboard()

    If (Clipboard = semestre)
    {
        bot.ApagaClipboard()

        Break
    }

    Else
    {
        ControlSend,,{Down}, Cadastro de Matriz Curricular
        Sleep, 50
    }
}