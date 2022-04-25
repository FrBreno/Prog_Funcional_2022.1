module Foldl where

-- Contar quantas vezes o elemento x aparece na lista xs:
contar :: (Num a1, Eq a2) => a2 -> [a2] -> a1
contar x xs = foldl (\a b -> if b == x then a + 1 else a) 0 xs

-- Soma todos os elementos da lista:
somarTodos :: (Foldable t, Num a) => t a -> a
somarTodos xs = foldl (\a c -> a + c) 0 xs

-- Retorna o menor elemento da lista:
menor :: Ord a => [a] -> a
menor xs = foldl (\a b -> if b < a then b else a) (head xs) xs

-- Retorna True se x estiver na lista:
existe :: (Foldable t, Eq a) => a -> t a -> Bool
existe x xs = foldl (\t b -> x == b || t) False xs

-- Retorna a lista de todos os números ímpares de xs:
impares :: (Foldable t, Integral a) => t a -> [a]
impares xs = foldl (\acc x -> if odd x then acc ++ [x] else acc) [] xs

-- Soma todos os números ímpares da lista:
somarImpares :: (Foldable t, Integral a) => t a -> a
somarImpares xs = foldl (\acc x -> if odd x then acc + x else acc) 0 xs

-- Conta quantas ocorrências ocorreram de um número y na lista:
contarOcorrencia :: (Foldable t, Eq b, Num a) => t b -> b -> (a, b)
contarOcorrencia xs y = foldl (\(acc, a) x -> if x == y then (acc + 1, a) else (acc, a)) (0, y) xs

-- Conta quantas vezes um mesmo número apareceu em sequência na lista:
contarIguais :: (Eq b, Num a) => [b] -> a
contarIguais xs = fst $ foldl (\(acc, a) y -> if a == y then (acc + 1, y) else (acc, y)) (0, head xs) xs

-- Retorna True se x for um número primo:
ePrimo :: Integral a => a -> Bool
ePrimo 1 = False
ePrimo x = foldl (\a y -> x `mod` y /= 0 && a) True [2 .. x -1]