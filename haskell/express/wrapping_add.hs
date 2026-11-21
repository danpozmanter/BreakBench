-- LEVEL: STD

import Data.Int (Int64)
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let n = read (concat args) :: Int64
  print (n + 1)
