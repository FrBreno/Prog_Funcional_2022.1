module RotDir where

rotDir :: (Eq t, Num t) => t -> [a] -> [a]
rotDir 0 xs = xs
rotDir n xs = rotDir (n -1) zs
  where
    size = length xs -1
    zs = drop size xs ++ take size xs

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- getLine
  print $ rotDir a b