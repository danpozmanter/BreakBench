-- LEVEL: PROJECT

import qualified Data.ByteString as BS
import System.Entropy (getEntropy)
import Text.Printf (printf)

main :: IO ()
main = getEntropy 16 >>= putStrLn . concatMap (printf "%02x") . BS.unpack
