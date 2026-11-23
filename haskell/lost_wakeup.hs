import Control.Concurrent

main :: IO ()
main = do
  woken <- newEmptyMVar
  done <- newEmptyMVar
  putMVar woken ()
  _ <- forkIO $ do
    takeMVar woken
    putStrLn "done"
    putMVar done ()
  takeMVar done
