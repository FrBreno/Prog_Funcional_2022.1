module SomaImpares where

somaImpares :: Integral a => [a] -> a
somaImpares xs = sum $ [x | x <- filter odd xs]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ somaImpares a
