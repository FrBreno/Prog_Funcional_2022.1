module Final where

final :: Int -> [a] -> [a]
final x xs = drop (length xs - x) xs

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ final a b