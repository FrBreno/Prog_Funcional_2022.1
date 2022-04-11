module SplitAt where

-- OPÇÃO 01:
-- divide :: [a] -> Int -> ([a], [a])
-- divide xs ind = splitAt ind xs

-- -- OPÇÃO 02:
divide :: [a] -> Int -> ([a], [a])
divide xs ind = (take ind xs, drop ind xs)

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO Int
  print $ divide a b
