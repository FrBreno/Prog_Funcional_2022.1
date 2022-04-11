module ContarIguais_02 where

contarIguais :: (Eq a, Num p) => a -> a -> a -> p
contarIguais a b c
  | a == b && b == c = 3
  | a == b || a == c || b == c = 2
  | otherwise = 0

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ contarIguais a b c