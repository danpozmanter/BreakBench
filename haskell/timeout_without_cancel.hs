import Control.Concurrent
import Control.Monad (when)
import Data.IORef
import System.Timeout (timeout)

charge :: MVar () -> IORef Int -> IO ()
charge gate balance = do
  readMVar gate
  atomicModifyIORef' balance (\b -> (b - 30, ()))

main :: IO ()
main = do
  balance <- newIORef 100
  gate <- newEmptyMVar
  attempt <- timeout 100000 (charge gate balance)
  when (attempt == Nothing) $ do
    putMVar gate ()
    charge gate balance
  readIORef balance >>= print
