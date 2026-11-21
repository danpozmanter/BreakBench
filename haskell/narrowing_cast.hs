import System.Environment (getArgs)
import Data.Word (Word8)

main :: IO ()
main = do
  args <- getArgs
  let v = read (head args) :: Int
  print (fromIntegral v :: Word8)
