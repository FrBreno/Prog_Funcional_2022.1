module Concatena where

concatena :: [a] -> [a] -> [a]
concatena [] [] = []
concatena ys [] = ys
concatena [] xs = xs
concatena (y : ys) xs = y : concatena ys xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ concatena a b
