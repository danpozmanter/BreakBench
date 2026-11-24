import Control.Concurrent
-- CONTROL! import Text.Read (readMaybe)

main :: IO ()
main = do
  answer <- newEmptyMVar
  _ <- forkIO (putMVar answer $! (read "x" :: Int)) -- CONTROL! _ <- forkIO (putMVar answer $! (readMaybe "x" :: Maybe Int))
  takeMVar answer >>= print -- CONTROL! takeMVar answer >>= putStrLn . maybe "failed" show
