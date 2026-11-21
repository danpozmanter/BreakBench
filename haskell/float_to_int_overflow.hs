import System.Environment (getArgs)
import Data.Int (Int64)

main :: IO ()
main = do
  args <- getArgs
  let x = read (head args) :: Double
  print (truncate x :: Int64)
