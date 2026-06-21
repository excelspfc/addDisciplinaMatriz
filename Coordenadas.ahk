#NoEnv  ; Recomendado para desempenho e compatibilidade com versões futuras do AutoHotkey.
SendMode Input  ; Recomendado para novos scripts devido à sua velocidade e confiabilidade superiores.
SetWorkingDir %A_ScriptDir%  ; Garante um diretório inicial consistente.

;JANELA
    class JanelaSWA {
    
        nomeJanelaDestino := "JACAD - Sistema Educacional " swa
        pausa := 333
    }
;

;PIXEL
    class CoordPixelCampoDisc {

        xOrigem := 530
        yOrigem := 245
        xDestino := 630
        yDestino := 250
        hexaPixel := 0x000000
        voltas := 500
        pausa := 333
    }

    class CoordPixelCampoCHPadrao {

        xOrigem := 473
        yOrigem := 404
        xDestino := 502
        yDestino := 414
        hexaPixel := 0x000000
        voltas := 500
        pausa := 333
    }
;

; CLIQUE

    class CoordIconMatriz {

        x := 270
        y := 100
        nomeJanelaOrigem := "JACAD - Sistema Educacional " swa
        nomeJanelaDestino := "Cadastro de Matriz Curricular"
        pausa := 333
    }

    class CoordBtnConsultaMatriz {

        x := 490
        y := 200
        nomeJanelaOrigem := "Cadastro de Matriz Curricular"
        nomeJanelaDestino := "Consulta de Matriz Curricular"
        pausa := 333
    }

    class CoordRegConsultaMatriz {

        x := 600
        y := 325
        nomeJanelaOrigem := "Consulta de Matriz Curricular"
        nomeJanelaDestino :=
        pausa := 333
    }

    class CoordRegSemestre {

        x := 365
        y := 545
        nomeJanelaOrigem := "Cadastro de Matriz Curricular"
        nomeJanelaDestino :=
        pausa := 333
    }

    class CoordBtnAddDisciplina {

        x := 530
        y := 735
        nomeJanelaOrigem := "Cadastro de Matriz Curricular"
        nomeJanelaDestino := "Cadastro de Disciplinas"
        pausa := 1000
    }

    class CoordCampoCodDisciplina {

        x := 465
        y := 250
        nomeJanelaOrigem := "Cadastro de Disciplinas"
        nomeJanelaDestino :=
        pausa := 333
    }

    class CoordCampoModal {

        x := 825
        y := 300
        nomeJanelaOrigem := "Cadastro de Disciplinas"
        nomeJanelaDestino :=
        pausa := 333
    }

    class CoordCampoModulo {

        x := 1190
        y := 325
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }

    class CoordCampoCHPadrao {

        x := 465
        y := 400
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }
    
    class CoordCampoCHCobrada {

        x := 595
        y := 400
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }
    
    class CoordCampoCHPratica {

        x := 595
        y := 425
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }
    
    class CoordCampoCHTeorica {

        x := 465
        y := 425
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }
    
    class CoordCampocreditos {

        x := 595
        y := 450
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }

    class CoordRegNomeRed {

        x := 700
        y := 545
        nomeJanelaOrigem := "Cadastro de Matriz Curricular"
        nomeJanelaDestino :=
        pausa := 333
    }
    
    class CoordBtnRemoveDisc {

        x := 640
        y := 735
        nomeJanelaOrigem := "Cadastro de Matriz Curricular"
        nomeJanelaDestino := "Remover Disciplina"
        pausa := 333
    }

    class Coord {

        x := 
        y := 
        nomeJanelaOrigem :=
        nomeJanelaDestino :=
        pausa := 333
    }
;

; DIGITAÇÃO
    class DigitaCodMatriz  {

        digitacao := codMatriz
        posDigitacao := "Enter"
        nomeJanelaDestino := "Consulta de Matriz Curricular"
    }

    class DigitaCodDisc  {

        digitacao := codDisc
        posDigitacao := "Enter"
        nomeJanelaDestino := "Cadastro de Disciplinas"
    }
    
    class DigitaCHPadrao  {

        digitacao := CHPadrao
        posDigitacao :=
        nomeJanelaDestino :=
    }    
    
    class DigitaCHCobrada  {

        digitacao := CHCobrada
        posDigitacao :=
        nomeJanelaDestino :=
    }
    
    class DigitaCHPratica  {

        digitacao := CHPratica
        posDigitacao :=
        nomeJanelaDestino :=
    }
    
    class DigitaCHTeorica  {

        digitacao := CHTeorica
        posDigitacao :=
        nomeJanelaDestino :=
    }
    
    class DigitaCreditos  {

        digitacao := creditos
        posDigitacao :=
        nomeJanelaDestino :=
    }
;

; CLIPBOARD
    class Preenche {

        valorClipboard :=
    }
;