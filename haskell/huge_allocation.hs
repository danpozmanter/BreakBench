import System.Environment (getArgs)
import qualified Data.ByteString as BS

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  let buf = BS.replicate n 0
  print (BS.length (BS.snoc (BS.take (n - 1) buf) 1))
