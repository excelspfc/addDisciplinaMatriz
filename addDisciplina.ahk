#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

If (opcao = "add")
{
    bot.ClicarControle("CoordBtnAddDisciplina")
    
    bot.ClicarComum("CoordCampoCodDisciplina")
    
    bot.DigitaClipboard("DigitaCodDisc")
    
    bot.ProcuraPixel("CoordPixelCampoDisc")
    
    bot.ClicarComum("CoordCampoModal")
    
    ControlSend,,{e}, Cadastro de Disciplinas
    Sleep, 50
    
    ControlSend,,{Enter}, Cadastro de Disciplinas
    Sleep, 50
    
    bot.ClicarComum("CoordCampoModulo")
    
    #Include digitaModulo.ahk
    
    ControlSend,,{Enter}, Cadastro de Disciplinas
    Sleep, 333
    
    bot.ClicarComum("CoordCampoCHPadrao")
    
    ControlSend,,%CHPadrao%, Cadastro de Disciplinas
    Sleep, 333
    
    bot.ClicarComum("CoordCampoCHCobrada")
    
    bot.DigitaClipboard("DigitaCHCobrada")
    
    bot.ClicarComum("CoordCampoCHPratica")
    
    bot.DigitaClipboard("DigitaCHPratica")
    
    bot.ClicarComum("CoordCampoCHTeorica")
    
    bot.DigitaClipboard("DigitaCHTeorica")
    
    bot.ClicarComum("CoordCampocreditos")
    
    bot.DigitaClipboard("DigitaCreditos")
    
    ControlSend,,{CtrlDown}{s}{CtrlUp}, Cadastro de Disciplinas
    WinWaitClose, Cadastro de Disciplinas
}