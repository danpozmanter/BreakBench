-- CONTROL! import System.Exit (ExitCode (..))
import System.Process (callProcess) -- CONTROL! import System.Process (callProcess, readProcessWithExitCode)

main :: IO ()
main = do
  callProcess "sh" ["-c", "exit 3"] -- CONTROL! (code, _, _) <- readProcessWithExitCode "sh" ["-c", "exit 3"] ""
  putStrLn "backed up" -- CONTROL! putStrLn (if code == ExitSuccess then "backed up" else "backup failed")
