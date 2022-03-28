# S02 - Pesquisa

## Questionamento

1. Onde utilizar cada paradigma de programação?

## Resposta:

### 1. Imperativo

Esse paradigma determina que as instruções passadas ao computador seja organizada em forma de passo a passo das ações que serão executadas, focando no "como" o algoritmo deve ser feito. Tais ações mudam o estado do programa através do uso de variáveis que ficam armazenadas em memória, até chegar ao resultado esperado.

Logo, podemos utilizar esse paradigma em aplicações de baixo nível, onde é necessário especificarmos o passo a passo do processo para um melhor alcance do objetivo.

#### Exemplo de aplicação

O paradigma imperativo é aplicado quando programamos em _Assembly_ (linguagem puramente imperativa). Nesse tipo de linguagem, a estrutura de salto se destaca (jumps).

Abaixo temos um exemplo de código utilizando o paradigma imperativo. O objetivo desse programa é somar os números pares no intervalo de 1 à 10.

```
  numbers = [1,2,3,4,5,6,7,8,9,10];
  soma = 0;
  aux = 0;
  i = 0;
inicio:
  n = length(numbers);
  if (i >= n) goto fim;
  aux = numbers[i];
  if (aux%2 == 0) goto proximo;
proximo:
  soma = soma + aux;
  i = i + 1;
fim:
  return soma;
```

### 2. Estruturado

O paradigma estruturado especifica que as instruções passadas ao computador podem ser formadas por 3 estruturas:

1. Sequências
2. Condição
3. Repetição

Além disso, a partir dessas estruturas podemos fazer uso da recursão nos códigos.

Assim, podemos aplicar esse paradigma em códigos mais complexos e mais longos do que os imperativos, onde as estruturas de condição, repetição e recursão tornarão o código mais enxuto, de fácil compreenção e manipulação.

#### Exemplo de aplicação

Fatorial de x:

```
  function fatorial(x){
        if(x > 1){
          return x*fatorial(x-1);
        }
  }
```

### 3. Declarativo

Esse paradigma determina que as instruções passadas ao computador devem especificar a sequência lógica sem determinar o fluxo de controle. O foco da resolução está em determinar "o quê" e não "o como" determinado, por exemplo, no paradigma imperativo.

#### Aplicação

O paradigma declarativo é bastante utilizado na programação restritiva e na programação lógica, ambas descrevem propriedades da solução desejada, não especificando como o algoritmo em si deve agir.

Exemplo de código, semelhante ao exemplo do paradigma imperativo, em SQL:

```SQL
  select sum(number) from numbers where mod(number, 2) = 0 and number <= 10;
```

### 4. Orientado a objeto

A OO determina que o código deve ser modelado de forma a se aproximar ao mundo real, utilizando estrutura de objetos, características e ações.

#### Aplicação

O uso de OO é comum em modelagens complexas, que envolvem entidades e que visam soluções mais elaboradas, tentando aproximar a estrutura de código à características do mundo real.

### 5. Funcional

Esse paradigma deriva do paradigma declarativo e tem duas características que o torna bem diferente dos demais: a imutabilidade e, por consequência, a não mudança de estado do software.

#### Aplicação

Paradigma utilizado em aplicações na qual o código possa ser reduzido (alto nível de abstração), focando em instruções relacionadas ao resultado esperado. Atualmente, a programação funcional vem sendo bastante utilizada para prototipação, especificação e aprendizado em ambientes acadêmicos.

### 6. Lógico

Esse paradigma deriva do declarativo e se destaca por utilizar formas de lógica simbólica como padrões de entrada e saída para, a partir daí, realizar inferências para produzir os resultados.

#### Aplicação

O paradigma lógico é utilizado em soluções de problemas que envolvem inteligência artificial, criação de programas especialistas e comprovação de teoremas.

## &nbsp;

##### Fontes de pesquisa:

- [guia.dev](https://guia.dev/pt/pillars/languages-and-tools/programming-paradigms.html#imperativo)
- [wikipedia.org - Programação imperativa](https://pt.wikipedia.org/wiki/Programação_imperativa)
- [wikipedia.org - Programação declarativa](https://pt.wikipedia.org/wiki/Programação_declarativa)
- [Medium - Sergio Costa/Paradigma funcional](https://sergiocosta.medium.com/paradigma-funcional-3194924a8d20)
- [Betrybe](https://www.google.com/amp/s/blog.betrybe.com/tecnologia/paradigma-de-programacao/amp/)
