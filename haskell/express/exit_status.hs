-- LEVEL: STD

import System.Exit
import System.Process

main :: IO ()
main = do
  (code, _, _) <- readProcessWithExitCode "false" [] ""
  print (case code of ExitSuccess -> 0; ExitFailure n -> n)
