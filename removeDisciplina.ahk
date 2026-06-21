#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

If (opcao = "remove")
{
    Sleep, 1500
    bot.ClicarControle("CoordRegNomeRed")

    Loop
    {
        bot.CopiaClipboard()

        If (Clipboard = codDisc)
        {
            bot.ApagaClipboard()

            Break
        }

        Else
        {
            If (Clipboard = codDisc . " ")
            {
                bot.ApagaClipboard()

                Break
            }

            If (Clipboard . " " = codDisc)
            {
                bot.ApagaClipboard()

                Break
            }
        }
        ControlSend,,{Down}, Cadastro de Matriz Curricular
        Sleep, 50
    }

    bot.ClicarControle("CoordBtnRemoveDisc")

    ControlSend,,{Space}, Remover Disciplina
    WinWaitClose, Remover Disciplina
    WinWaitActive, Cadastro de Matriz Curricular
    Sleep, 1500
    bot.ClicarControle("CoordRegNomeRed")
    ControlSend,,{CtrlDown}{Up}{CtrlUp}, Cadastro de Matriz Curricular
}