module Myfilter where

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []
myfilter pre (x:xs) 
  | pre x = x : myfilter pre xs
  | otherwise = myfilter pre xs

main :: IO ()
main = do
  print $ myfilter (>5) [0..10] == [6,7,8,9,10]
  print $ myfilter (odd) [0..10] == [1,3,5,7,9]