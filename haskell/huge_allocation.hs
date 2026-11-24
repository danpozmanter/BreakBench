import System.Environment (getArgs)
import qualified Data.ByteString as BS

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  let buf = BS.replicate n 0 -- CONTROL! let buf = BS.replicate (min n (2 ^ 30)) 0
  print (BS.length (BS.snoc (BS.take (n - 1) buf) 1)) -- CONTROL! putStrLn (if n > 2 ^ 30 then "too large" else show (BS.length (BS.snoc (BS.take (n - 1) buf) 1)))
