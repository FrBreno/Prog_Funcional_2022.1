# S02

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

#### Exemplo de aplicação

### 4. Orientado a objeto

#### Exemplo de aplicação

### 5. Funcional

#### Exemplo de aplicação

### 6. Lógico

#### Exemplo de aplicação

&nbsp;

##### Fontes:

- [guia.dev](https://guia.dev/pt/pillars/languages-and-tools/programming-paradigms.html#imperativo)
- [wikipedia.org - Programação imperativa](https://pt.wikipedia.org/wiki/Programação_imperativa)
