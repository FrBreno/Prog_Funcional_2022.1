module BuscaComPredicados where

myreplicate :: (Num t1, Ord t1) => t1 -> t2 -> [t2]
myreplicate 1 y = [y]
myreplicate x y
  | x > 0 = y : myreplicate (x -1) y
  | otherwise = []

main :: IO ()
main = do
  print $ myreplicate 4 0
  print $ myreplicate 2 True
  print $ myreplicate 3 "banana"