module Init where

-- OPÇÃO 01:
-- primeiros xs = init xs
-- OPÇÃO 02:
primeiros :: [a] -> [a]
primeiros xs = [x | x <- xs, length xs > 1]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ primeiros a