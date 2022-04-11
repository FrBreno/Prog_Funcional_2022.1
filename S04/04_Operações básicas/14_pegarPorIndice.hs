module PegarPorIndice where

-- UTILIZANDO RECURSÃO:
elemento :: Int -> [p] -> p
elemento ind [] = error "Lista vazia!" -- Caso a lista esteja vazia.
elemento 0 xs = head xs
elemento ind (x : xs)
  | ind < 0 = elemento indNeg xs
  | otherwise = elemento (ind - 1) xs
  where
    indNeg = ind + length xs

-- UTILIZANDO O OPERADOR "!!":
{--
elemento :: Int -> [a] -> a
elemento ind xs = if ind < 0 then xs !! indNeg else xs !! ind
  where
    indNeg = ind + length xs
--}

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ elemento a b
