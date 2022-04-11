module Paridade where

paridade :: [Bool] -> Bool
paridade xs = odd $ sum [1 | x <- xs, x]

main :: IO ()
main = do
  a <- readLn :: IO [Bool]
  print $ paridade a
