
#Importamos o arquivo cidades.xls
dados <- readxl::read_xls('lista1/cidades.xls')
str(dados)
# Observamos que muitas colunas numéricas foram lidas como do tipo caractere, 
# mesmo a função tendo identificado corretamente que o arquivo usa virgula commo separador decimal.


# Apenas as colunas `MUNIC` e `UF` são de caracteres, as outras deveriam ser do tipo numéricas.
# Após analisar os dados, descobrimos que os dados faltantes estão codificados com um traço "-". 
# Dessa forma, vamos ler novamnete o arquivo e dizer ao R para tratar os traços como dados faltantes.
dados <- readxl::read_xls('lista1/cidades.xls', na='-')
str(dados)
# Com isso os tipos de dados estão agora corretos


# B
# A seguir, apresentamos um resumo das variáveis dos dados como o comando `summary`:
summary(dados)

# C
# Observando o resumo do item anterior, notamos que as variáveis `MUNIC` e `UF` são alfanuméricas enquanto que as demais são nnuméricas.
# A seguir indicamos o número de observações omissas em cada variável:
kableExtra::kable(as.data.frame(colSums(is.na(dados))),col.names = 'Obs. Omissas')


