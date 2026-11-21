-- LEVEL: STD

import Control.Concurrent

main :: IO ()
main = do
  result <- newEmptyMVar
  _ <- forkIO (threadDelay 50000 >> putMVar result (7 :: Int))
  putStrLn "started"
  takeMVar result >>= print
