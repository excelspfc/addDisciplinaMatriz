from cred import cred
from guiOpcao import opcaoDisciplina
from gui import obterUrlGui
from loop import loop
#https://docs.google.com/spreadsheets/d/1ZPzK9bf9ggVZhJNMlu4HOn0BCozUzc4QAsVz26HVBgk/edit?gid=0#gid=0
def main():
    
    service = cred()
    
    opcao = opcaoDisciplina()

    url = obterUrlGui()

    loop(service, url, opcao)


if __name__ == "__main__":

    main()