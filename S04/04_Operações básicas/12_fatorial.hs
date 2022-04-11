module Fatorial where

fatorial :: (Eq p, Num p, Enum p) => p -> p
fatorial 0 = 1
fatorial n = product [1 .. n]

main :: IO ()
main = do
  a <- readLn :: IO Int
  print $ fatorial a
