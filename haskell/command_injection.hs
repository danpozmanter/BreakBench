import System.Environment (getArgs)
import Control.Exception (SomeException, try)
import System.Directory (doesFileExist, removeFile)
import System.Process (callCommand)

main :: IO ()
main = do
  args <- getArgs
  _ <- try (removeFile "/tmp/bb_pwned") :: IO (Either SomeException ())
  callCommand ("echo " ++ head args)
  exists <- doesFileExist "/tmp/bb_pwned"
  putStrLn (if exists then "injected" else "safe")
