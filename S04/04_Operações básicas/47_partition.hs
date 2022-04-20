module Partition where

{--
  SEPARA A LISTA EM UMA TUPLA DE DUAS LISTAS,
  UMA COM OS N° PARES E A OUTRA COM OS N° IMPARES DA LISTA ORIGINAL
--}
-- splitints :: Integral a => [a] -> ([a], [a])
-- splitints u = ([x | x <- u, odd x], [x | x <- u, even x])

{--
  RECEBE UM PREDICADO E UMA LISTA, E FAZ A SEPARAÇÃO DE ACORDO COM O PREDICADO.

  EXs de entradas:
  > splitints odd [1,2,3,4,5,6,7]
      OUT:([1,3,5,7],[2,4,6])
  > splitints (<5) [2,4,6,1,1,7]
      OUT:([2,4,1,1],[6,7])
--}
splitints :: (a -> Bool) -> [a] -> ([a], [a])
splitints pred u = ([x | x <- u, pred x], [x | x <- u, not $ pred x])
