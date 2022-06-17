module Indices where

indices :: (Eq a1, Num a2, Enum a2) => a1 -> [a1] -> [a2]
indices v xs = foldl (\zs (_,y) -> zs++[y]) [] $ filter (\(x,_) -> x == v) $ zip xs [0..]

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ indices a b