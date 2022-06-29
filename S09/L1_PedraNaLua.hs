import Control.Monad (replicateM)  

toInt x = read x :: Int

grudaIndice [] = []
grudaIndice (x:xs) = [x]  ++ grudaIndice xs

jogadores [] = []
jogadores (x:y:xs) = [(x,y)] ++ jogadores xs

processa vet = if length dist == 0 then "sem ganhador" else show result
  where
    pedras = foldl (\acc v -> acc++ map toInt (words v)) [] vet
    jogs = filter (\(_,(a,b)) -> a >= 10 && b >=10) $ zip [0..] $ grudaIndice $ jogadores pedras
    dist = map (\(i,(a,b)) -> (i,abs(a-b))) jogs
    filtraMaior = foldl(\acc d -> if acc < snd d then acc else snd d) (snd $ head dist) dist
    result = fst $ head $ filter (\(_,b) -> b == filtraMaior) dist

    

main = do
  size <- readLn
  vet <- replicateM size getLine
  print $ processa vet 

testes = do
    print $ processa ["8 11", "10 15"] == "1"
    print $ processa ["9 12", "11 13", "10 11"] == "2"
    print $ processa ["12 15", "16 14", "10 9"] == "1"
    print $ processa ["12 15", "20 23", "10 9", "35 35"] == "3"
    print $ processa ["10 8", "9 13"] == "sem ganhador"
    print $ processa ["8 9", "12 7"] == "sem ganhador"
    print $ processa ["10 9", "15 19"] == "1"
    print $ processa ["9 8", "9 12", "12 15", "18 19"] == "3"