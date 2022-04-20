module Alter where

alter :: (Eq a, Num a) => a -> [a]
alter 0 = []
alter n = alter (n -1) ++ [n, - n]

main :: IO ()
main = do
  a <- readLn :: IO Int
  print $ alter a
