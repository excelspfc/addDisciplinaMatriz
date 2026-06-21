from busca_insere import buscaDados, insereStatus1, insereStatus2
import subprocess, os
import socket
arquivo_integracao = r'variaveis'
arquivo_ahk = r'index.ahk'

# Cria um socket para "descobrir" o IP local
s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
s.connect(("8.8.8.8", 80))  # Conecta ao DNS público do Google
ip = s.getsockname()[0]
s.close()
ip_address = ip

def loop(service, url, opcao):

    num_rows, values = buscaDados(service, url)
    
    contador = 0
        
    codMatrizAnterior = 0
    
    if opcao == "add":

        coluna = 9
    
    else:
        
        coluna = 3

    for i in range(num_rows):
        
        contador += 1

        try:

            num_rows, values = buscaDados(service, url)
            
            for j, row in enumerate(values):

                if j == 0:
                    
                    pass
                
                if row[coluna] == "Aguardando":

                    insereStatus1(service, url, j, ip_address, opcao)
                    
                    break
            
            num_rows, values = buscaDados(service, url)
            
            for j, row in enumerate(values):
                    
                if row[coluna] == "Em execução pela máquina de ip: " + ip_address:
                    
                    if os.path.exists(f"{arquivo_integracao}_{ip_address}.tsv"):
                        
                        os.remove(f"{arquivo_integracao}_{ip_address}.tsv")

                    with open(f"{arquivo_integracao}_{ip_address}.tsv", 'a', encoding='utf-8-sig') as arquivo:
                    
                        codMatriz = row[0]

                        semestre = row [1]

                        codDisc = row [2]
                        
                        if opcao == "add":
                        
                            modulo = row [3]

                            CHPadrao = row [4]

                            CHCobrada = row [5]

                            CHPratica = row [6]

                            CHTeorica = row [7]

                            creditos = row [8]

                            arquivo.write(f"{opcao};{codMatriz};{semestre};{codDisc};{modulo};{CHPadrao};{CHCobrada};{CHPratica};{CHTeorica};{creditos};{codMatrizAnterior};{contador}")
                        
                        else:

                            arquivo.write(f"{opcao};{codMatriz};{semestre};{codDisc};{codMatrizAnterior};{contador}")
                            
                            
                    arquivo.close()

                    subprocess.Popen([arquivo_ahk], shell=True).wait()
                    
                    insereStatus2(service, url, j, opcao)
                    
                    os.remove(f"{arquivo_integracao}_{ip_address}.tsv")     
                    
                    codMatrizAnterior = codMatriz
                    
                    if contador == 100:
                        
                        contador = 1

        except IndexError:

            continue