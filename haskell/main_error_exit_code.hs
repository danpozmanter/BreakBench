import Control.Exception
import System.Exit
import System.IO

main :: IO ()
main = do
  result <- try (readFile "/nonexistent/bb.conf") :: IO (Either IOException String)
  case result of
    Left e -> hPutStrLn stderr ("config missing: " ++ show e) -- BREAK!
    -- CONTROL! Left e -> hPutStrLn stderr ("config missing: " ++ show e) >> exitFailure
    Right text -> print (length text)
