import Data.List
import Data.Maybe

-- retorna o subvetor incluindo o elemento posição índice e lim elementos a esquerda e a direita
neib :: [a] -> Int -> Int -> [a]
neib xs index lim = drop limEsq $ take (limDir+1) xs
  where
    limDir = min (length xs-1) (index + lim)
    limEsq = max 0 (index - lim)

-- verifica se o valor existe no vetor
exists :: Eq a => a -> [a] -> Bool
exists y xs = elem y xs

-- converte de digito para char
dig2char :: (Eq a, Num a, Enum a) => a -> Char
dig2char dig = head $ [f | (f, s) <- zip ['0'..'9'] [0..], s == dig]

-- verifica se esse valor pode ser inserido nesse índice
fit :: (String, Int) ->  Int -> Int -> Bool
fit (xs, lim) index value = not $ exists (dig2char value) (neib xs index lim)
-- fit (xs, lim) index value = length [x | x <- (neib xs index lim), x == (dig2char value)] == 0

-- pega as posições de todos os .
getHoles :: String -> [Int]
getHoles xs = [snd x| x <- zip xs [0..], fst x == '.']

-- insere esse valor nesse index e retorna o novo vetor resultante
set :: String -> Int -> Int -> String
set xs index value = take index xs ++ [dig2char value] ++ drop (index + 1) xs 

-- tenta resolver o problema para essa posição
-- se é possível resolver, retorna Just resposta, senão Nothing
-- problema (xs, lim)
-- holes: lista de posições a serem preenchidas
-- hindex: posicao atual no vetor de holes
solve :: (String, Int) -> [Int] -> Int -> Maybe String
solve (xs, lim) holes hindex
    | length holes == hindex = Just xs 
    | length res == 0 = Nothing
    | otherwise = retorno
    where
        possiveis = zip [0..] (foldl (\acc x -> acc ++ [fit (xs, lim) (holes!!hindex) x]) [] [0..lim]) -- Lista de possiveis valores para aquele buraco.
        res = [fst x | x <- possiveis, snd x] -- Lista dos valores válidos para aquele buraco.
        solveRec r = solve (set xs (holes!!hindex) r, lim) holes (hindex+1) -- Chamada recursiva incrementando o valor de hindex.
        variantes = [solveRec r| r <- res] -- Joga todas as resoluções válidas e inválidas do problema em uma lista.
        retorno = foldl(\str v -> if isJust v then v else str) Nothing variantes -- Pega a primeira resolução válida que aparecer, ou Nothing caso não tenha resolução para o problema.

-- prepara a entrada para a função recursiva de resolução
mainSolver :: String -> Int -> String
mainSolver xs lim = fromJust $ solve (xs, lim) (getHoles xs) 0



main :: IO ()
main = do
    xs <- getLine
    lim <- readLn :: IO Int
    putStrLn $ mainSolver xs lim


------------------------------------------------------------------------------------
-- Testes para lhe auxiliar a construir a solução de forma mais segura
------------------------------------------------------------------------------------


neibTest :: IO ()
neibTest = do
    print $ neib "abcdef.." 0 2 == "abc"
    print $ neib "abc.def"  3 1 == "c.d"
    print $ neib "abc.def"  3 2 == "bc.de"
    print $ neib "abc.def"  1 2 == "abc."
    print $ neib "abc.def"  5 3 == "c.def"

dig2charTest :: IO ()
dig2charTest = do
    print $ map dig2char [0..9] == ['0'..'9']

setTest :: IO ()
setTest = do
    print $ set "12345" 0 9 == "92345"
    print $ set "12345" 1 9 == "19345"
    print $ set "12345" 4 9 == "12349"

fitTest :: IO ()
fitTest = do -- (fit ("12.345", 1) 2) se torna uma função curry faltando só uma var que seria o valor recebido do vetor
    print $ map (fit ("12.345", 1) 2) [1,2,3,4,5] == [True, False, False, True, True]
    print $ map (fit ("12.345", 2) 2) [1,2,3,4,5] == [False, False, False, False, True]
    print $ map (fit ("12.345", 3) 2) [1,2,3,4,5] == [False, False, False, False, False]
    print $ map (fit ("12345.", 4) 5) [1,2,3,4,5] == [True, False, False, False, False]

getHolesTest :: IO ()
getHolesTest = do
    print $ getHoles "12.3.." == [2,4,5]
    print $ getHoles "12.3.4" == [2,4]
    print $ getHoles "...3.4" == [0,1,2,4]

mainTest :: IO ()
mainTest = do
    print $ mainSolver "01.2." 3 == "01320"
    print $ mainSolver ".0..231..5" 5 == "1045231045"
    print $ mainSolver "2..0..............3..........." 3 == "213021302130213021302130213021"
    print $ mainSolver "0..32..41." 5 == "0413250413"
    print $ mainSolver "9....7.620.5318....." 9 == "95318746209531874620"
