algoritmo ResultadoDeVendas

var
mes: caractere
nota1, nota2, nota3: real
soma: real

inicio
    escreval("Valor de JAN: ")
    leia(nota1)

    escreval("Valor do FEV: ")
    leia(nota2)

    escreval("Valor do MAR: ")
    leia(nota3)

    soma <- (nota1 + nota2 + nota3)
    se soma >=17000 entao
    escreval("Meta Batida") 
    senao
    escreval("Meta Não Batida")
    fimse
fimalgoritmo    