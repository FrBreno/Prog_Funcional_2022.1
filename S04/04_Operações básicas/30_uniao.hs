module Uniao where

uniao :: Eq a => [a] -> [a] -> [a]
uniao xs ys = xs ++ [z | z <- ys, z `notElem` xs]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ uniao a b
