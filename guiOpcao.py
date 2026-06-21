import tkinter as tk
from  tkinter import ttk

def opcaoDisciplina():
    
    opcao = None
    
    def pegaOpcao():

        nonlocal opcao

        opcao = inputOpcao.get()

        janela.destroy()

    janela = tk.Tk()
    janela.title("Automação de Manipulação de Disciplina")

    label = tk.Label(janela, width=45, text="Selecione o que deseja fazer com as disiciplinas:")
    label.pack(pady=0)

    inputOpcao = ttk.Combobox(janela, width=55, state="readonly")
    inputOpcao ['values'] = ["Adicionar Disciplinas", "Remover Disciplinas"]
    inputOpcao.pack(padx=10, pady=10)

    botao = tk.Button(janela, text="Selecionar a Opção", command=pegaOpcao)
    botao.pack()

    janela.mainloop()
    
    if opcao == "Adicionar Disciplinas":
        
        opcao = "add"
    
    else:
        
        opcao = "remove"
    
    return opcao