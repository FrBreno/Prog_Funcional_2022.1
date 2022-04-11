module Sublist where

sublist i j xs = take (jNeg - iNeg) $ drop iNeg xs
  where
    iNeg = if i < 0 then length xs + i else i
    jNeg = if j < 0 then length xs + j else j

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  c <- readLn :: IO [Int]
  print $ sublist a b c