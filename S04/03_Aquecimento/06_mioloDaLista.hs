module MioloDaLista where

interior :: [a] -> [a]
interior xs = init $ tail xs

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ interior a