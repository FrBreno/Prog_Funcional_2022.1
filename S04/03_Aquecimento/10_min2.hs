module Min2 where

min2 :: Ord p => p -> p -> p
min2 x y = if x < y then x else y

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ min2 a b