import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let price = read (head args) :: Int
  let total = price + 2
  print price -- CONTROL! print total
