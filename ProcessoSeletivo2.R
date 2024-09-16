#Programa que verifica quantas ocorrências da letra A existem em uma string, seja maiúscula ou minúscula
#Código em linguagem R. Para testar basta inserir uma string no campo stringEntrada e rodar o código.
#Recomendo usar Ctrl+A e Ctrl+Enter para rodar o código inteiro.
#Não serão utilizadas funções prontas de bibliotecas neste código.
stringEntrada <- "testando o codigo em R para o processo seletivo AAAaaa" #String de entrada - 9 letras A

#Função que conta quantas ocorrências da letra A existem em uma string, seja maiúscula ou minúscula
contaA <- function(string){
  contador <- 0 #Variável que armazenará a quantidade de ocorrências da letra A
  for(i in 1:nchar(string)){
    if(tolower(substr(string, i, i)) == "a"){ #Se a letra for igual a "a" ou "A"
      contador <- contador + 1 #Incrementa a variável contador
    }
  }
  return(contador) #Retorna a quantidade de ocorrências da letra A
}

#Imprime a quantidade de ocorrências da letra A na string de entrada
print(paste("A quantidade de ocorrencias da letra A na string de entrada eh:", contaA(stringEntrada)))
