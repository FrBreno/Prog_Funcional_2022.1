module Intercal where

-- USANDO RECURSÃO:
intercal :: [a] -> [a] -> [a]
intercal [] ys = ys
intercal xs [] = xs
intercal (x : xs) (y : ys) = [x] ++ [y] ++ intercal xs ys

-- USANDO ZIP E FOLD:
-- foldando :: Num a => [a] -> [a] -> [a]
-- foldando xs ys = if length ys < length xs then foldl (\r (f, s) -> r ++ [f, s]) [] menorXs else foldl (\r (f, s) -> r ++ [f, s]) [] menorYs
--   where
--     menorXs = zip (xs ++ repeat (-1)) ys
--     menorYs = zip xs (ys ++ repeat (-1))

-- intercal :: (Eq a, Num a) => [a] -> [a] -> [a]
-- intercal xs ys = removeMenosUm $ foldando xs ys
--   where
--     removeMenosUm zs = [z | z <- zs, z /= -1]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ intercal a b