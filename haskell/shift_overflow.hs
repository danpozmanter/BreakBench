import System.Environment (getArgs)
import Data.Bits (shiftL)
import Data.Int (Int64)

main :: IO ()
main = do
  args <- getArgs
  let s = read (head args) :: Int
  print (shiftL (1 :: Int64) s) -- CONTROL! print (shiftL (1 :: Integer) s)
