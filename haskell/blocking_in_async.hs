import Control.Concurrent
import Control.Monad (replicateM, replicateM_)
import Data.Time.Clock (diffUTCTime, getCurrentTime)

main :: IO ()
main = do
  start <- getCurrentTime
  done <- newEmptyMVar
  replicateM_ 2 (forkIO (threadDelay 500000 >> putMVar done ()))
  _ <- replicateM 2 (takeMVar done)
  end <- getCurrentTime
  putStrLn (if diffUTCTime end start < 0.8 then "concurrent" else "serial")
