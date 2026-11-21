import Control.Concurrent
import Control.Monad
import Data.IORef

main :: IO ()
main = do
  count <- newIORef (0 :: Int)
  done <- newEmptyMVar
  replicateM_ 2 (forkIO (replicateM_ 1000000 (modifyIORef' count (+ 1)) >> putMVar done ()))
  replicateM_ 2 (takeMVar done)
  readIORef count >>= print
