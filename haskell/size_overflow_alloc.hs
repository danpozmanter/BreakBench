import Data.Array.IO
import Data.Word (Word8)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let count = read (head args) :: Int
      size = count * 8
  records <- newArray (0, size - 1) 0 :: IO (IOUArray Int Word8)
  writeArray records 8 99
  putStrLn "stored"
