-- LEVEL: STD

import Control.Concurrent
import System.Timeout

main :: IO ()
main = do
  r <- timeout 100000 (threadDelay 5000000 >> return "done")
  putStrLn (maybe "timed out" id r)
