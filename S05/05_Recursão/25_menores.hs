module Menores where

removerMaior :: Eq t => t -> [t] -> [t]
removerMaior maior (x : xs) = if x == maior then xs else x : removerMaior maior xs

menores :: Ord a => Int -> [a] -> [a]
menores 0 xs = []
menores _ [] = []
menores n xs = if n < length xs then menores n (removerMaior (maior xs) xs) else xs
  where
    maior [n] = n
    maior (x : xs) = if x > maior xs then x else maior xs

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ menores a b