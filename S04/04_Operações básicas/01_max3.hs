module Max03 where

max3 :: Ord a => a -> a -> a -> a
max3 x y z
  | x > y && x > z = x
  | y > z = y
  | otherwise = z

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ max3 a b c
