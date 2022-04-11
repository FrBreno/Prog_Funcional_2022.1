module Swap where

swap :: [a] -> Int -> Int -> [a]
swap xs i j = if i <= size && j <= size then p1 ++ [elem01] ++ p2 ++ [elem02] ++ p3 else xs
  where
    size = length xs
    elem01 = xs !! j
    elem02 = xs !! i
    p1 = take i xs
    p2 = take (j - i - 1) $ drop (i + 1) xs
    p3 = drop (j + 1) xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO Int
  c <- readLn :: IO Int
  print $ swap a b c