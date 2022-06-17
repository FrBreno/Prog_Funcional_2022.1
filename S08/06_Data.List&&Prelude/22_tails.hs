module Mytails where

mytails :: [a] -> [[a]]
mytails xs
  | length xs == 0 = [[]]
  | otherwise = [xs] ++ mytails (tail xs) 

main :: IO () 
main = do
  a <- readLn :: IO [Int]
  print $ mytails a

mainTestes :: IO ()
mainTestes = do
  print $ mytails [1] == [[1],[]]
  print $ mytails [1,3,5] == [[1,3,5],[3,5],[5],[]] 
  print $ mytails [5,3,4] == [[5,3,4],[3,4],[4],[]]