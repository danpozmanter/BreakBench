import Control.Concurrent
import Control.Monad (void)
import Data.IORef

save :: IORef Int -> IO ()
save store = do
  threadDelay 50000
  atomicModifyIORef' store (\n -> (n + 1, ()))

main :: IO ()
main = do
  store <- newIORef 0
  void (forkIO (save store)) -- CONTROL! done <- newEmptyMVar; void (forkIO (save store >> putMVar done ()))
  -- CONTROL! takeMVar done
  readIORef store >>= print
