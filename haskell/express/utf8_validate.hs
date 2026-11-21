-- LEVEL: STD

import qualified Data.ByteString as BS
import Data.Text.Encoding (decodeUtf8')

main :: IO ()
main = putStrLn (either (const "invalid") (const "valid") (decodeUtf8' (BS.pack [0x61, 0xFF])))
