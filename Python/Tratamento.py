import pandas as pd 

ocorr = pd.read_excel('indicadoressegurancapublicauf (1).xlsx', sheet_name='Ocorrências')

#Remove os crimes contra a vida da primeira base de dados
ocorr = pd.read_excel('indicadoressegurancapublicauf (1).xlsx', sheet_name='Ocorrências')

patterns = ['Homicídio doloso', 'Lesão corporal seguida de morte', 'Roubo seguido de morte \(latrocínio\)']
pattern = '|'.join(patterns)

ocorr_filtrado = ocorr[~ocorr['Tipo Crime'].str.contains(pattern, case=False, na=False)]
ocorr_filtrado

# Atualizar o nome da coluna ocorrencias em ocorr_filtrado pra Vítimas

ocorr_filtrado = ocorr_filtrado.rename(columns={'ocorrencias': 'Vítimas'})

#Coloca NI o sexo da vitima antes de realizar a imersão dos dados
ocorr_filtrado['Sexo da Vítima'] = 'NI'

ocorr_filtrado.to_excel('ocorrencias.xlsx', index=False)
print("DataFrame successfully exported to ocorrencias.xlsx")

ocorr_filtrado

#Carrega a segunda tabela de dados da planilha
Vítimas = pd.read_excel('indicadoressegurancapublicauf (1).xlsx', sheet_name='Vítimas')

#Renomeia a coluna chamada Vítimas para Ocorrencias
Vítimas = Vítimas.rename(columns={'Vítimas': 'Ocorrências'})

# Mesclar os DataFrames
dados_mesclados = pd.concat([ocorr_filtrado, Vítimas], ignore_index=True)

#Substitui o Sexo NI para NI para evitar redundancias com o nome da coluna
dados_mesclados['Sexo da Vítima'] = dados_mesclados['Sexo da Vítima'].replace('Sexo NI', 'NI')


# Definir os crimes contra a vida
crimes_contra_a_vida = ['Homicídio doloso', 'Lesão corporal seguida de morte', 'Roubo seguido de morte (latrocínio)']
crimes_padronizados = [crime.lower().strip() for crime in crimes_contra_a_vida]

# Criar coluna 'Crime Contra a Vida'
dados_mesclados['Crime Contra a Vida'] = dados_mesclados['Tipo Crime'].apply(
    lambda x: 'Sim' if str(x).lower().strip() in crimes_padronizados else 'Não'
)

dados_mesclados.to_excel('dados_mesclados.xlsx', index=False)

# Exportar para CSV
dados_mesclados.to_csv('ultimo_arquivo.csv', index=False, sep=";", encoding="utf-8")
print("Exportado para CSV com sucesso!")



