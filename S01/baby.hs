-- EXERCÍCIOS DO CAP. 1 E 2 DO ARTIGO: APRENDER HASKELL SERÁ UM GRANDE BEM PARA VOCÊ!

-- Primeiras funções do seu filho
doubleMe x = x + x

-- doubleUs x y = x * 2 + y * 2
doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x =
  if x > 100
    then x
    else x * 2 -- O "else" é obrigatório em Haskell.

doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1

-- "'" é permitido em Haskell e pode ser utilizado para indicar uma nova versão de uma função levemente modificada.
conanO'Brien = "Este sou eu, Conan O'Brien!"
