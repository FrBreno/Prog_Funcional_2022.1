module Fibonacci where

fib :: (Eq t, Num t, Num p) => t -> p
fib 0 = 0
fib 1 = 1
fib n = fib (n -1) + fib (n -2)

main :: IO ()
main = do
  a <- readLn :: IO Int
  print $ fib a
