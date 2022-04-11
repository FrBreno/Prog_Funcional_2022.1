module Length where

-- CASO 01:
-- total :: Num a1 => [a2] -> a1
-- total xs = sum $ map (\x -> 1) xs

-- CASO 02:
total :: Num p => [a] -> p
total [] = 0
total (x : xs) = 1 + total xs

-- CASO 03:
-- total :: [a] -> Integer
-- total = foldl (\x _ -> x + 1) 0

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ total a