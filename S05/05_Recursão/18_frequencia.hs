module Frequencia where

-- UTILIZANDO FILTER:
-- frequencia :: Eq a => a -> [a] -> Int
-- frequencia x xs = length $ filter (== x) xs

-- UTILIZANDO COMPREENSÃO DE LISTA:
-- frequencia :: (Num a1, Eq a2) => a2 -> [a2] -> a1
-- frequencia x xs = sum [1 | y <- xs, y == x]

-- UTILIZANDO RECURSÃO:
frequencia :: (Num p, Eq t) => t -> [t] -> p
frequencia _ [] = 0
frequencia n (x : xs) = if n == x then 1 + frequencia n xs else frequencia n xs

-- UTILIZANDO FOLDL:
-- frequencia :: (Foldable t, Num b, Eq a) => a -> t a -> b
-- frequencia n xs = foldl cont 0 xs
--   where
--     cont x y = if y == n then x + 1 else x

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ frequencia a b