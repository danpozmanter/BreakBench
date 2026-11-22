import Control.Concurrent

main :: IO ()
main = do
  answer <- newEmptyMVar
  _ <- forkIO (putMVar answer $! (read "x" :: Int))
  takeMVar answer >>= print
