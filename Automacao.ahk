#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

class Execucao {

    AtivarJanela(coordClasse) {

        coor := new %coordClasse%()

        nomeJanelaDestino := coor.nomeJanelaDestino
        pausa := coor.pausa

        WinActivate, %nomeJanelaDestino%
        WinWaitActive, %nomeJanelaDestino%
        Sleep, %pausa%
    }

    AguardarFecharJanela(coordClasse) {

        coor := new %coordClasse%()

        nomeJanelaOrigem := coor.nomeJanelaOrigem
        nomeJanelaDestino := coor.nomeJanelaDestino
        pausa := coor.pausa

        WinWaitClose, %nomeJanelaDestino%
        WinWaitActive, %nomeJanelaOrigem%
        Sleep, %pausa%
    }

    FecharJanela(coordClasse) {

        coor := new %coordClasse%()

        nomeJanelaOrigem := coor.nomeJanelaOrigem
        nomeJanelaDestino := coor.nomeJanelaDestino
        pausa := coor.pausa

        Loop, 20
        {
            CoordMode, Pixel, Screen
            PixelSearch, FoundX, FoundY, 0, 0, 1600, 900, 0xFFF6D1, 0, Fast RGB
            Sleep, 300
        }
        Until ErrorLevel

        WinClose, %nomeJanelaDestino%
        WinWaitClose, %nomeJanelaDestino%
        WinWaitActive, %nomeJanelaOrigem%
        Sleep, %pausa%
    }

    ClicarControle(coordClasse) {

        coor := new %coordClasse%()

        coorX := coor.x
        coorY := coor.y
        nomeJanelaOrigem := coor.nomeJanelaOrigem
        nomeJanelaDestino := coor.nomeJanelaDestino
        pausa := coor.pausa

        BlockInput, MouseMove
        CoordMode, Mouse, Screen
        Click, 800, 0, 0
        ControlClick, , %nomeJanelaOrigem%, , Left, 1, x%coorX% y%coorY% NA
        BlockInput, MouseMoveOff

        If(nomeJanelaDestino)
        {
            WinWaitNotActive, %nomeJanelaOrigem%

            WinWaitActive, %nomeJanelaDestino%
        }

        Sleep, %pausa%
    }

    ClicarComum(coordClasse) {

        coor := new %coordClasse%()

        coorX := coor.x
        coorY := coor.y
        nomeJanelaOrigem := coor.nomeJanelaOrigem
        nomeJanelaDestino := coor.nomeJanelaDestino
        pausa := coor.pausa

        CoordMode, Mouse, Screen
        Click, 800, 0, 0
        CoordMode, Mouse, Screen
        Click, %coorX%, %coorY% Left, 1
        CoordMode, Mouse, Screen
        Click, 800, 0, 0
        Sleep, 333
    }

    ProcuraPixel(coordClasse)   {

        coor := new %coordClasse%()

        xOrigem := coor.xOrigem
        yOrigem := coor.yOrigem
        xDestino := coor.xDestino
        yDestino := coor.yDestino
        hexaPixel := coor.hexaPixel
        voltas := coor.voltas
        pausa := coor.pausa

        BlockInput, MouseMove
        Click, 800, 0, 0
        BlockInput, MouseMoveOff

        Loop, %voltas%
        {
            CoordMode, Pixel, Screen
            PixelSearch, , , %xOrigem%, %yOrigem%, %xDestino%, %yDestino%, %hexaPixel%, 0, Fast RGB
            Sleep, %pausa%
        }
        Until ErrorLevel = 0
    }

    ProcuraImagem(coordClasse) {

        coor := new %coordClasse%()

        xOrigem := coor.xOrigem
        yOrigem := coor.yOrigem
        xDestino := coor.xDestino
        yDestino := coor.yDestino
        imagem := coor.imagem
        voltas := coor.voltas
        pausa := coor.pausa

        Loop, %voltas%
        {
            CoordMode, Pixel, Screen
            ImageSearch, , , %xOrigem%, %yOrigem%, %xDestino%, %yDestino%, %imagem%
            Sleep, %pausa%
        }
        Until ErrorLevel = 0
    }

    ApagaClipboard(){

        While Clipboard
        {
            Clipboard :=
            Sleep, 50
        }
    }

    CopiaClipboard(){

        this.ApagaClipboard()

        While !Clipboard
        {
            Send, ^c  
            ClipWait, 1
        }
    }

    PreencheClipboard(coordClasse){

        coor := new %coordClasse%()

        valorClipboard := coor.valorClipboard

        this.ApagaClipboard()

        While !Clipboard
        {
            Clipboard := valorClipboard
            Sleep, 50

            /*
                If (Clipboard = 0)
                {
                    Break
                }
            */
        }
    }

    DigitaClipboard(coordClasse) {

        coor := new %coordClasse%()

        digitacao := coor.digitacao
        posDigitacao := coor.posDigitacao        
        nomeJanelaDestino := coor.nomeJanelaDestino

        this.ApagaClipboard()

        While !Clipboard
        {
            Clipboard := digitacao
            Sleep, 50            
            
            If (digitacao = 0)
            {
                Break
            }
        }

        Send, ^v
        Sleep, 333

        this.ApagaClipboard()

        If (posDigitacao)
        {
            ControlSend,,{%posDigitacao%}, %nomeJanelaDestino%
            Sleep, 333

            WinWaitActive, %nomeJanelaDestino%
            Sleep, 333
        }
    }
}

bot := new Execucao()