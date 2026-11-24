import System.Environment (getArgs)
import Data.Array

data Frame = Frame { buf :: Array Int Int, secret :: Int }

main :: IO ()
main = do
  args <- getArgs
  let f = Frame { buf = listArray (0, 3) [1, 2, 3, 4], secret = 42 }
  print (buf f ! read (head args)) -- CONTROL! let i = read (head args) :: Int in putStrLn (if i >= 0 && i <= 3 then show (buf f ! i) else "out of range")
