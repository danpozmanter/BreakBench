-- LEVEL: STD

import Control.Concurrent
import Control.Exception

main :: IO ()
main = do
  result <- newEmptyMVar
  _ <- forkFinally (throwIO (userError "bad input") :: IO ()) (putMVar result)
  r <- takeMVar result
  case r of
    Left e -> putStrLn (displayException e)
    Right () -> putStrLn "ok"
