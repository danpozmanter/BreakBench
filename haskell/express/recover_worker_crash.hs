-- LEVEL: STD

import Control.Concurrent
import Control.Exception

main :: IO ()
main = do
  result <- newEmptyMVar
  _ <- forkFinally (evaluate (error "crash" :: ())) (putMVar result)
  r <- takeMVar result
  putStrLn (either (const "worker crashed") (const "worker finished") r)
