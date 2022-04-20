module Sequencia_32 where

sequencia :: (Eq a, Num a) => a -> a -> [a]
sequencia 0 m = []
sequencia n m = sequencia (n -1) m ++ [m + (n -1)]

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ sequencia a b