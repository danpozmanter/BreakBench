import System.Environment (getArgs)
import Data.Bits (toIntegralSized)
import Data.Word (Word8)

main :: IO ()
main = do
  args <- getArgs
  let v = read (head args) :: Int
  putStrLn (maybe "out of range" show (toIntegralSized v :: Maybe Word8))
