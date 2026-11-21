import System.Environment (getArgs)
import qualified Data.ByteString as BS
import Control.Monad (foldM)

main :: IO ()
main = do
  args <- getArgs
  let n = read (head args) :: Int
  (heads, prefixes) <- foldM (\(hs, ps) i -> do
    let buf = BS.replicate 32768 (fromIntegral i)
        big = replicate 32768 (toEnum (97 + i `mod` 26)) :: String
        h = BS.take 16 buf
        p = take 16 big
    BS.length h `seq` length p `seq` return (h : hs, p : ps)) ([], []) [0 .. n - 1]
  print (length heads + length prefixes - length prefixes)
