module Intersect where

intersec :: (Foldable t, Eq a) => [a] -> t a -> [a]
intersec xs ys = [z | z <- xs, z `elem` ys]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ intersec a b
