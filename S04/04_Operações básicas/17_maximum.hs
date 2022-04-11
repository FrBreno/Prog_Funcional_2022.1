module Maximum where

maior :: Ord a => [a] -> a
maior [x] = x
maior (x : xs) = if nMaior > x then nMaior else x
  where
    nMaior = maior xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ maior a