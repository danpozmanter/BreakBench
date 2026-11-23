import Control.Exception (IOException, try)
import Data.List (isSuffixOf)
import System.Directory (createDirectoryIfMissing)

main :: IO ()
main = do
  createDirectoryIfMissing True "/tmp/bb_files"
  writeFile "/tmp/bb_files/report.txt" "secret\n"
  let name = "report.txt\0.png"
  if not (".png" `isSuffixOf` name)
    then putStrLn "rejected"
    else do
      result <- try (readFile ("/tmp/bb_files/" ++ name)) :: IO (Either IOException String)
      either (const (putStrLn "rejected")) putStr result
