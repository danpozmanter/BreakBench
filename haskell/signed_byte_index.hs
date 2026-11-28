import Data.Array (accumArray, elems)
import qualified Data.ByteString as BS
import qualified Data.Text as T
import Data.Text.Encoding (encodeUtf8)
import System.Environment (getArgs)

main :: IO ()
main = do
  args <- getArgs
  let bytes = BS.unpack (encodeUtf8 (T.pack (head args)))
      counts = accumArray (+) 0 (0, 255) [(fromIntegral b, 1 :: Int) | b <- bytes]
  print (sum (drop 128 (elems counts)))
