import System.Environment (getArgs)
import Control.Exception (SomeException, try)
import System.Directory (doesFileExist, removeFile)
import System.Process (callCommand, callProcess)

main :: IO ()
main = do
  args <- getArgs
  _ <- try (removeFile "/tmp/bb_pwned") :: IO (Either SomeException ())
  callProcess "echo" [head args]
  exists <- doesFileExist "/tmp/bb_pwned"
  putStrLn (if exists then "injected" else "safe")
