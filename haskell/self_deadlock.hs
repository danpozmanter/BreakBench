import Control.Concurrent.MVar

deposit :: MVar Int -> Int -> IO ()
deposit lock amount = modifyMVar_ lock (return . (+ amount))

main :: IO ()
main = do
  lock <- newMVar 0
  balance <- takeMVar lock -- BREAK!
  deposit lock 10
  putMVar lock balance -- BREAK!
  putStrLn "done"
