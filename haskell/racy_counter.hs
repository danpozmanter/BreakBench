import Control.Concurrent
import Control.Monad
import Data.IORef

-- The Data.IORef documentation sends updates shared between threads to atomicModifyIORef.
main :: IO ()
main = do
  counter <- newIORef (0 :: Int)
  dones <- forM [1 .. 8 :: Int] $ \_ -> do
    d <- newEmptyMVar
    void (forkIO (replicateM_ 1000000 (atomicModifyIORef' counter (\n -> (n + 1, ()))) >> putMVar d ()))
    return d
  mapM_ takeMVar dones
  readIORef counter >>= print
