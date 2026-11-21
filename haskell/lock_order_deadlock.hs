import Control.Concurrent
import Control.Monad (void)

transfer :: MVar () -> MVar () -> MVar () -> IO ()
transfer first second done = do
  takeMVar first
  threadDelay 100000
  takeMVar second
  putMVar second ()
  putMVar first ()
  putMVar done ()

main :: IO ()
main = do
  a <- newMVar ()
  b <- newMVar ()
  d1 <- newEmptyMVar
  d2 <- newEmptyMVar
  void (forkIO (transfer a b d1))
  void (forkIO (transfer b a d2))
  takeMVar d1
  takeMVar d2
  putStrLn "finished"
