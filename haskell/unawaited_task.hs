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
  void (forkIO (save store))
  readIORef store >>= print
