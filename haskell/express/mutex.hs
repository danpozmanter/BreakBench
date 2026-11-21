-- LEVEL: STD

import Control.Concurrent
import Control.Monad

main :: IO ()
main = do
  counter <- newMVar (0 :: Int)
  dones <- forM [1, 2 :: Int] $ \_ -> do
    done <- newEmptyMVar
    _ <- forkIO (replicateM_ 100000 (modifyMVar_ counter (return . (+ 1))) >> putMVar done ())
    return done
  mapM_ takeMVar dones
  readMVar counter >>= print
