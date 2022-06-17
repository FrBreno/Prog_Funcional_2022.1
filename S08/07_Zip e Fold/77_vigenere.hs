module Vigenere where
import Data.Maybe

charToInt :: Eq a => [(a, b)] -> [a] -> [b]
charToInt alfabeto xs = map (\x -> fromJust $ lookup x alfabeto) xs

vigenere :: [Char] -> [Char] -> [Char]
vigenere text ks = map (\x -> fst $ alfabeto!!x) $ map (\x -> x `mod` 26) $ map (\(x,y) -> x+y) $ zip textInt keyInt
  where
    alfabeto = zip ['A'..'Z'] [0..]
    key = map (\(_,y) -> y) $ zip text $ concat $ replicate (length text) ks
    textInt = charToInt alfabeto text
    keyInt = charToInt alfabeto key

main :: IO ()
main = do
  print $ vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"
  print $ vigenere "ABACATE" "A" == "ABACATE" 
  print $ vigenere "ABACATE" "B" == "BCBDBUF" 
  print $ vigenere "ABACATE" "AB" == "ACADAUE" 
    