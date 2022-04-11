module CountNeg where

countNeg :: (Ord a, Num p, Num a) => [a] -> p
countNeg [] = 0
countNeg (x : xs) = if x < 0 then 1 + countNeg xs else countNeg xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ countNeg a