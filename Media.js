// media.js
// O prompt-sync lê a resposta do usuário no terminal de forma síncrona.
const prompt = require('prompt-sync')({ sigint: true });

// Repete a pergunta até receber uma nota válida.
function lerNota(pergunta) {
  while (true) {
    const resposta = prompt(pergunta).trim();

    // Aceita decimais com vírgula ou ponto, como 7,5 ou 7.5.
    const nota = Number(resposta.replace(',', '.'));

    // Verifica se a resposta foi preenchida, pois Number('') retorna 0.
    if (resposta !== '' && Number.isFinite(nota) && nota >= 0 && nota <= 10) {
      return nota;
    }

    console.log('Nota inválida. Digite um número de 0 a 10.');
  }
}

function resultadoFinalDeAno() {
  // Cada chamada aguarda a resposta antes de passar para a próxima pergunta.
  const nome = prompt('Digite o nome do aluno: ');
  const nota1 = lerNota('Digite a primeira nota: ');
  const nota2 = lerNota('Digite a segunda nota: ');
  const nota3 = lerNota('Digite a terceira nota: ');
  const nota4 = lerNota('Digite a quarta nota: ');

  // Calcula a média aritmética das quatro notas.
  const media = (nota1 + nota2 + nota3 + nota4) / 4;

  // Formata a média com duas casas decimais apenas para exibição.
  const mediaFormatada = media.toLocaleString('pt-BR', {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  });

  console.log(`\nAluno: ${nome}`);
  console.log(`Média final: ${mediaFormatada}`);

  // A aprovação considera a média calculada antes da formatação.
  if (media >= 7) {
    console.log('Resultado final: Aprovado');
  } else {
    console.log('Resultado final: Reprovado');
  }
}

// Inicia o programa.
resultadoFinalDeAno();