module Line where

lineSoma :: (Eq p, Num p) => p -> p
lineSoma 1 = 1
lineSoma n = n + lineSoma (n -1)

line :: (Enum a, Eq a, Num a) => a -> [a]
line 0 = []
line 1 = [1]
line n = [begin .. end]
  where
    begin = lineSoma (n -1) + 1
    end = (n -1) + begin

main :: IO ()
main = do
  a <- readLn :: IO Int
  print $ line a
