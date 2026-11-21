-- LEVEL: STD

import Control.Concurrent
import Control.Monad
import Data.IORef

main :: IO ()
main = do
  counter <- newIORef (0 :: Int)
  dones <- forM [1, 2 :: Int] $ \_ -> do
    done <- newEmptyMVar
    _ <- forkIO (replicateM_ 100000 (atomicModifyIORef' counter (\n -> (n + 1, ()))) >> putMVar done ())
    return done
  mapM_ takeMVar dones
  readIORef counter >>= print
