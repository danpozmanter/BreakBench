import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  print (n + 1)
