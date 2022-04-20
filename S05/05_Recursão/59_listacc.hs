module Listacc where

listacc :: Num a => [a] -> [a]
listacc [] = []
listacc xs = listacc (init xs) ++ [sum xs]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ listacc a