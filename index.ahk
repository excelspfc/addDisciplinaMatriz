#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

#Include leLinhaArquivo.ahk

;#Include fecha_swa.ahk

;#Include abre_swa.ahk

#Include Coordenadas.ahk

#Include Automacao.ahk

#Include navIni.ahk

#Include buscaMatriz.ahk

#Include selecionaSemestre.ahk

#Include addDisciplina.ahk

#Include removeDisciplina.ahk

bot.ClicarControle("CoordRegSemestre")
ControlSend,,{CtrlDown}{Up}{CtrlUp}, Cadastro de Matriz Curricular

ExitApp