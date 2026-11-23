import Control.Concurrent

-- Haskell has no early return; the MVar is refilled on every path.
withdraw :: MVar Int -> Int -> IO ()
withdraw account amount = do
  balance <- takeMVar account
  putMVar account (if amount > balance then balance else balance - amount)

main :: IO ()
main = do
  account <- newMVar 100
  withdraw account 500
  done <- newEmptyMVar
  _ <- forkIO (withdraw account 30 >> putMVar done ())
  takeMVar done
  readMVar account >>= print
