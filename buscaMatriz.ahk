#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

If (codMatriz != codMatrizAnterior)
{
    bot.ClicarControle("CoordBtnConsultaMatriz")

    bot.DigitaClipboard("DigitaCodMatriz")

    bot.ClicarControle("CoordRegConsultaMatriz")

    ControlSend,,{Enter}, Consulta de Matriz Curricular
    WinWaitClose, Consulta de Matriz Curricular
    Sleep, 333
}