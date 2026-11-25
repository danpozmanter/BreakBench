import Control.Exception (finally)
import System.Directory (removeFile)
import System.Environment (getArgs)
import System.Exit (exitSuccess)

lockPath :: FilePath
lockPath = "/tmp/bb_scratch/run.lock"

checkArgs :: IO Bool
checkArgs = do
  args <- getArgs
  if "--version" `elem` args
    then putStrLn "1.0" >> exitSuccess
    else pure False

main :: IO ()
main = do
  writeFile lockPath ""
  (do stop <- checkArgs
      if stop then pure () else putStrLn "working")
    `finally` removeFile lockPath
