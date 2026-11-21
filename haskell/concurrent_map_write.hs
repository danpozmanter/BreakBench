import Control.Concurrent
import Control.Monad
import Data.IORef
import qualified Data.Map.Strict as M

main :: IO ()
main = do
  table <- newIORef M.empty
  dones <- forM [0 .. 7 :: Int] $ \t -> do
    d <- newEmptyMVar
    void (forkIO (forM_ [0 .. 99999 :: Int] (\k -> atomicModifyIORef' table (\m -> (M.insert (t * 100000 + k) k m, ()))) >> putMVar d ()))
    return d
  mapM_ takeMVar dones
  readIORef table >>= print . M.size
