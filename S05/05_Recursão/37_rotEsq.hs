module RotEsq where

rotEsq :: (Eq t, Num t) => t -> [a] -> [a]
rotEsq 0 xs = xs
rotEsq n (x : xs) = rotEsq (n -1) (xs ++ [x])

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- getLine
  print $ rotEsq a b