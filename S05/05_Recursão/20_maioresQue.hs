module MaioresQue where

maioresQue :: Ord a => a -> [a] -> [a]
maioresQue n [] = []
maioresQue n (x : xs) = if x > n then z ++ maioresQue n xs else maioresQue n xs
  where
    z = [x]

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ maioresQue a b