module FractionReduce where

reduce :: Integral a => (a, a) -> (a, a)
reduce t = (num,den)
  where
    minimo = min (fst t) (snd t)
    reducoes = [minimo,minimo-1..1]
    divisor = head $ filter (\x -> fst t `mod` x == 0 && snd t `mod` x == 0) reducoes
    num = div (fst t) divisor
    den = div (snd t) divisor

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ reduce (a,b)

mainTestes :: IO ()
mainTestes = do
  print $ reduce (10,2) == (5,1)
  print $ reduce (15,6) == (5,2)
  print $ reduce (30,12) == (5,2)
  print $ reduce (120,48) == (5,2)
  print $ reduce (50,100) == (1,2)