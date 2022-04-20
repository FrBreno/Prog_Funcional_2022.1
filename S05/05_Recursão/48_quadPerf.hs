module QuadPerf where

quadperfTeste :: (Num t, Ord t) => t -> t -> Bool
quadperfTeste i n
  | i * i == n = True
  | i * i > n = False
  | otherwise = quadperfTeste (i + 1) n

quadperf :: (Num t, Ord t) => t -> Bool
quadperf n = quadperfTeste 1 n

main :: IO ()
main = do
  a <- readLn :: IO Int
  print $ quadperf a