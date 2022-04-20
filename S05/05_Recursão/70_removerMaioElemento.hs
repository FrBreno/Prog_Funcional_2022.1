module RemoverMaiorElemento where

removerMaior :: Ord a => [a] -> [a]
removerMaior [] = []
removerMaior [n] = []
removerMaior xs = [z | z <- xs, z /= maior xs]
  where
    maior [n] = n
    maior (x : xs) = if x > maior xs then x else maior xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ removerMaior a