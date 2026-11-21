import System.IO

main :: IO ()
main = do
  h <- openFile "/tmp/bb_close.txt" WriteMode
  hPutStr h "a"
  hClose h
  hPutStr h "b"
  putStrLn "ok"
