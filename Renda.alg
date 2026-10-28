algoritmo ImpostoDeRenda

var
nome: caractere
valor: real

inicio
    escreval("Digite seu nome: ")
    leia(nome)

    escreval("Valor recebido anual?: ")
    leia(valor)
    
    se valor >=19000 entao
    escreval("Pagar Imposto") 
    senao
    escreval("Isento")
    fimse
fimalgoritmo    