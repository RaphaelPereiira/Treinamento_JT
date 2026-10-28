algoritmo "EscolhaDoTransporte"

var
   passageiros: inteiro

inicio
   escreva("Informe a quantidade de passageiros: ")
   leia(passageiros)

   se (passageiros <= 0) entao
      escreval("Quantidade de passageiros inválida.")
   senao
      se (passageiros <= 4) entao
         escreval("Transporte: Carro de passeio.")
      senao
         se (passageiros <= 8) entao
            escreval("Transporte: Mini van.")
         senao
            se (passageiros <= 16) entao
               escreval("Transporte: Van.")
            senao
               se (passageiros <= 40) entao
                  escreval("Transporte: Ônibus.")
               senao
                  escreval("Excedeu a quantidade de passageiros.")
               fimse
            fimse
         fimse
      fimse
   fimse

fimalgoritmo