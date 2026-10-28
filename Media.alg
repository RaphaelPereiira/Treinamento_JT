algoritmo "ResultadoFinalDeAno"

var
   nome: caractere
   nota1, nota2, nota3, nota4: real
   media: real

inicio
   escreva("Digite o nome do aluno: ")
   leia(nome)

   escreva("Digite a primeira nota: ")
   leia(nota1)

   escreva("Digite a segunda nota: ")
   leia(nota2)

   escreva("Digite a terceira nota: ")
   leia(nota3)

   escreva("Digite a quarta nota: ")
   leia(nota4)

   media <- (nota1 + nota2 + nota3 + nota4) / 4
   escreval ("Aluno: ", nome)
   escreval("Média final:, media")
   se media >=7 entao
    escreval("Resultado final: Aprovado")
    senao
    escreval("Resultado final: Reprovado")
    fimse
fimse

fimalgoritmo