import System.IO

main :: IO ()
main = do
  report <- openFile "/tmp/bb_report.txt" WriteMode
  hPutStrLn report "total=42"
  -- CONTROL! hClose report
