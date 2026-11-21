-- LEVEL: STD

import Data.Bits (toIntegralSized)
import Data.Word (Word8)
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  let v = read (concat args) :: Int
  putStrLn (maybe "does not fit" show (toIntegralSized v :: Maybe Word8))
