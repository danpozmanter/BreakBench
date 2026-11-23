import Control.Concurrent

main :: IO ()
main = do
  inbox <- newEmptyMVar
  goOn <- newEmptyMVar
  done <- newEmptyMVar
  _ <- forkIO $ do
    received <- takeMVar inbox
    takeMVar goOn
    case received of
      first : _ -> print first
      [] -> pure ()
    putMVar done ()
  let list = [1, 2, 3] :: [Int]
  putMVar inbox list
  let changed = 99 : drop 1 list
  putMVar goOn ()
  takeMVar done
  changed `seq` pure ()
