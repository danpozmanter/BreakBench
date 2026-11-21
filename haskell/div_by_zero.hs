import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let d = read (head args) :: Int
  print (100 `div` d)
