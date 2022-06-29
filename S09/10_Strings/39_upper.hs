module Upper where


upper str = str

main :: IO()
main = do
  a <- getLine
  print $ upper a