module Deletee where

deletee :: Eq a => a -> [a] -> [a]
deletee n [] = []
deletee n (x : xs) = if x /= n then x : deletee n xs else xs

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ deletee a b