module Elem where

-- OPÇÃO 01:
-- pertence ind xs = elem ind xs

-- OPÇÃO 02 - Lista de compreensão:
-- pertence ind xs = not $ null [x | x <- xs, ind == x]

-- OPÇÃO 03 - Recursiva:
pertence ind [] = False
pertence ind (x : xs) = if x == ind then True else pertence ind xs

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ pertence a b