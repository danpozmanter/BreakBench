-- LEVEL: STD

import Control.Concurrent (threadDelay)
import System.Exit
import System.Process

main :: IO ()
main = do
  (_, _, _, ph) <- createProcess (proc "sleep" ["10"])
  threadDelay 100000
  terminateProcess ph
  code <- waitForProcess ph
  putStrLn (if code /= ExitSuccess then "killed" else "finished")
