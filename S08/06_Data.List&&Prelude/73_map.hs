module Map where

mymap :: (t -> a) -> [t] -> [a]
mymap _ [] = []
mymap op (x:xs) = op x : mymap op xs 

main :: IO ()
main = do
    print $ mymap (+1) [1, 2, 3] == [2, 3, 4]
    print $ mymap (odd) [6,2,1] == [False, False, True]