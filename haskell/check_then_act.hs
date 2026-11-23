import Control.Concurrent
import Control.Concurrent.Chan
import Control.Monad
import Data.IORef

claim :: MVar (IORef Bool, IORef Int) -> Chan () -> MVar () -> Chan () -> IO ()
claim state ready release done = do
  (claimed, winners) <- readMVar state
  available <- withMVarLock claimed
  writeChan ready ()
  takeMVar release
  when available $ do
    atomicModifyIORef' claimed (const (True, ()))
    atomicModifyIORef' winners (\n -> (n + 1, ()))
  writeChan done ()
  where
    withMVarLock ref = do
      value <- readIORef ref
      return (not value)

main :: IO ()
main = do
  claimed <- newIORef False
  winners <- newIORef 0
  state <- newMVar (claimed, winners)
  ready <- newChan
  release <- newEmptyMVar
  done <- newChan
  forkIO (claim state ready release done)
  forkIO (claim state ready release done)
  readChan ready
  readChan ready
  putMVar release ()
  putMVar release ()
  readChan done
  readChan done
  readIORef winners >>= print
