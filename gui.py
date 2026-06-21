import tkinter as tk

def obterUrlGui():
    
    janela = tk.Tk()
    
    janela.title("Automação de Manipulação de Disciplina")

    tk.Label(janela, text="Cole ou digite a URL:").pack()
    
    entry = tk.Entry(janela, width=100)
    
    entry.pack(pady=10)

    resultado = {}

    def obter():
        
        url = entry.get()
        
        url_id = url.split("/")[5]

        resultado["url"] = url_id
        
        janela.destroy()

    tk.Button(janela, text="Obter Link", command=obter).pack()
    
    janela.mainloop()
    
    return resultado["url"]