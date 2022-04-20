module Reverso where

reverso :: [a] -> [a]
reverso [] = []
reverso [n] = [n]
reverso (x : xs) = reverso xs ++ [x]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ reverso a
