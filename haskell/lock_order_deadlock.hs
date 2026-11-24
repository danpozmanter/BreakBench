import Control.Concurrent
import Control.Concurrent.Chan
import Control.Monad (void)

transfer :: MVar () -> MVar () -> Chan () -> MVar () -> MVar () -> IO ()
transfer first second ready gate done = do
  takeMVar first
  writeChan ready () -- BREAK!
  takeMVar gate -- BREAK!
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
  ready <- newChan
  gate <- newEmptyMVar
  void (forkIO (transfer a b ready gate d1))
  void (forkIO (transfer b a ready gate d2)) -- CONTROL! void (forkIO (transfer a b ready gate d2))
  readChan ready -- BREAK!
  readChan ready -- BREAK!
  putMVar gate () -- BREAK!
  putMVar gate () -- BREAK!
  takeMVar d1
  takeMVar d2
  putStrLn "finished"
