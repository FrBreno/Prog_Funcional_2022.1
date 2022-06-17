module ProdutoEscalar where

produtoEscalar :: Num a => [a] -> [a] -> a
produtoEscalar xs ys = foldl (\acc (x,y) -> x*y + acc) 0 $ zip xs ys

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ produtoEscalar a b