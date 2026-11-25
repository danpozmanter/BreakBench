import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int -- CONTROL! let n = read (head args) :: Integer
  print n -- CONTROL! putStrLn (if n > toInteger (maxBound :: Int) || n < toInteger (minBound :: Int) then "invalid" else show n)
