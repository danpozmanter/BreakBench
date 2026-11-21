import qualified Data.ByteString as BS
import qualified Data.ByteString.Char8 as BC
import Text.Printf (printf)

main :: IO ()
main = do
  let session = BS.replicate 32 0 <> BC.pack "SECRET-TOKEN" <> BS.replicate 20 0
  BS.length session `seq` return ()
  let reply = BS.replicate 64 0
  putStrLn (concatMap (printf "%02x") (BS.unpack (BS.take 12 (BS.drop 32 reply))))
