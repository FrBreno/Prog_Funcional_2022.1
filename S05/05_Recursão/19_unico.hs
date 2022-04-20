module Unico where

-- UTILIZANDO FILTER:
-- unico :: Eq a => a -> [a] -> Bool
-- unico x xs = length (filter (== x) xs) == 1

-- UTILIZANDO RECURSÃO:
unico :: Eq t => t -> [t] -> Bool
unico n xs = length (unico' n xs) == 1
  where
    unico' n [] = []
    unico' n (x : xs) = if x == n then True : unico' n xs else unico' n xs

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ unico a b