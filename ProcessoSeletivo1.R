#Programa que calcula fibonacci e verifica se é igual ao número de entrada
#Código em linguagem R. Para testar basta inserir um número inteiro no campo numeroEntrada e rodar o código.
#Recomendo usar Ctrl+A e Ctrl+Enter para rodar o código inteiro.

numeroEntrada <- 75025 #Número de entrada

#Função que calcula a sequencia de fibonacci
fibonacci <- function(n){
  if(n == 0){
    return(0) #Se n for igual a 0, retorna 0
  } else if(n == 1){
    return(1) #Se n for igual a 1, retorna 1
  } else {
    return(fibonacci(n-1) + fibonacci(n-2)) #Se n for maior que 1, retorna a soma dos dois números anteriores
  }
}

#Verifica se o número de entrada é um número de fibonacci
fib <- 0 #Variável que armazenará o fibonacci de i
for (i in 1:numeroEntrada) {
  fib <- fibonacci(i) #Calcula o fibonacci de i
  print(fib) #Imprime o fibonacci de i
  if(fib == numeroEntrada){
    print(paste("O numero", numeroEntrada, "eh um numero de fibonacci!")) #Se o fibonacci de i for igual ao número de entrada, imprime que o número de entrada é um número de fibonacci
    break #Para o loop
  } else {
    if (fib > numeroEntrada) {
      print(paste("O numero", numeroEntrada, "nao eh um numero de fibonacci!")) #Se o fibonacci de i for maior que o número de entrada, imprime que o número de entrada não é um número de fibonacci
      break #Para o loop
    }
  }
}