#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

If (volta = 1)
{
    bot.AtivarJanela("JanelaSWA")

    bot.ClicarControle("CoordIconMatriz")
}