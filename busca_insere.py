import datetime

def buscaDados(service, url):

    result = service.spreadsheets().values().get(

        spreadsheetId = url,

        range = 'Página1'

    ).execute()

    values = result.get('values', [])

    if not values:
        
        print('Nenhum dado encontrado na guia.')
        
        return None
    
    num_rows = len(values)
    
    return num_rows, values

def insereStatus1(service, url, j, ip_address, opcao):

    if opcao == "add":
        
        range = f'Página1!J{j+1}'
        
    else:
        
        range = f'Página1!D{j+1}'
    
    service.spreadsheets().values().update(

        spreadsheetId = url,
        
        range = range,

        valueInputOption = "USER_ENTERED",    # Raw = insere valor como "Apenas Texto", enquanto USER_ENTERED = insere valor também como fórmula
        
        body = {"values": [[f"Em execução pela máquina de ip: {ip_address}"]]}
    
    ).execute()

def insereStatus2(service, url, j, opcao):

    hora = datetime.datetime.now()
    
    hora = hora.replace(microsecond=0)
    
    hora = hora.strftime("%d/%m/%Y %H:%M:%S")

    if opcao == "add":
        
        range = f'Página1!J{j+1}'
        
    else:
        
        range = f'Página1!D{j+1}'
    
    service.spreadsheets().values().update(

        spreadsheetId = url,

        range = range,

        valueInputOption = "USER_ENTERED",    # Raw = insere valor como "Apenas Texto", enquanto USER_ENTERED = insere valor também como fórmula

        body = {"values": [[f"Executado as {hora}"]]}

    ).execute()