module FilterMaybe where
import Data.Maybe

filterMaybe :: [Maybe Int] -> [Int]
filterMaybe xs = map (\x -> fromJust x) $ filter (\x -> isJust x) xs

countNothing :: [Maybe Int] -> Int
countNothing xs = length $ filter (\x->isNothing x) xs

mainTestes :: IO ()
mainTestes = do
  print $ filterMaybe [Just 5,Nothing,Just 7,Nothing] == [5, 7]
  print $ countNothing [Just 5,Nothing,Just 7,Nothing] == 2 