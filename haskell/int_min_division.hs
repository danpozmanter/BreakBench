import System.Environment (getArgs)
import Data.Int (Int64)

main :: IO ()
main = do
  args <- getArgs
  let a = read (head args) :: Int64
      b = read (args !! 1) :: Int64
  print (a `div` b) -- CONTROL! print (toInteger a `div` toInteger b)
