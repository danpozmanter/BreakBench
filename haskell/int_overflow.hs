import System.Environment (getArgs)
import Data.Int (Int64)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int64
  print (n + 1) -- CONTROL! print (toInteger n + 1)
