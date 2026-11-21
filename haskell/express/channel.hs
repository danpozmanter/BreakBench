-- LEVEL: STD

import Control.Concurrent
import Control.Monad

main :: IO ()
main = do
  ch <- newChan
  _ <- forkIO (mapM_ (writeChan ch) [1, 2, 3 :: Int])
  got <- replicateM 3 (readChan ch)
  putStrLn (unwords (map show got))
