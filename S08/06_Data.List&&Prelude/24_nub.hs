module Mynub where

mynub :: Eq a => [a] -> [a]
mynub [] = []
mynub (x:xs) 
  | elem x xs = x:mynub (filter (/=x) xs)
  | otherwise = x:mynub xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ mynub a

mainTestes :: IO ()
mainTestes = do
  print $ mynub [1,1,1] == [1]
  print $ mynub [2,1,2,1,1,1,1,2] == [2,1]
  print $ mynub [2,1,2,1,1,1,1,2,3] == [2,1,3]
  print $ mynub [1,2,5,2,5,7,2,5] == [1,2,5,7]