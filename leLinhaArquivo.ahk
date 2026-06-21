#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

IniRead, swa, C:\Bots\config.ini, Versao do SWA, vVersao_swa

hostname := A_ComputerName  ; Mesmo que socket.gethostname()
ip := ""

for adapter in ComObjGet("winmgmts:\\.\root\cimv2").ExecQuery("SELECT IPAddress FROM Win32_NetworkAdapterConfiguration WHERE IPEnabled = TRUE")
{
    if (adapter.IPAddress[0]) { ; IPv4 é sempre o índice [0]
        ip := adapter.IPAddress[0]
        break
    }
}

arquivo := "variaveis_" . ip . ".tsv"

FileRead, linha_varivel, %arquivo%

array := StrSplit(linha_varivel, ";")

opcao := array[1]

codMatriz := array[2]

semestre := array[3]

codDisc := array[4]

If (opcao = "add")
{
    modulo := array[5]

    CHPadrao := array[6]

    CHCobrada := array[7]

    CHPratica := array[8]

    CHTeorica := array[9]

    creditos := array[10]

    codMatrizAnterior := array[11]

    volta := array[12]
}

Else
{
    codMatrizAnterior := array[5]

    volta := array[6]
}