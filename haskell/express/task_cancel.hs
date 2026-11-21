-- LEVEL: STD

import Control.Concurrent
import Control.Monad

main :: IO ()
main = do
  stopped <- newEmptyMVar
  task <- forkFinally (forever (threadDelay 1000)) (\_ -> putMVar stopped ())
  threadDelay 20000
  killThread task
  takeMVar stopped
  putStrLn "stopped"
