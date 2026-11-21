-- LEVEL: STD

import System.Directory (getTemporaryDirectory, removeFile)
import System.IO

main :: IO ()
main = do
  tmp <- getTemporaryDirectory
  (path, h) <- openTempFile tmp "bb.txt"
  hPutStr h "ok"
  hClose h
  readFile path >>= \s -> length s `seq` putStrLn s
  removeFile path
