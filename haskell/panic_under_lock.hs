import Control.Concurrent
import Control.Exception
import Control.Monad (when)
import System.IO (hPutStrLn, stderr)

data Ledger = Ledger { debits :: Int, credits :: Int }

post :: MVar Ledger -> IO ()
post ledger = modifyMVar_ ledger $ \l -> do
  let l' = l { debits = debits l + 50 }
  when (debits l' > 0) (throwIO (userError "crash mid-update"))
  return l' { credits = credits l' + 50 }

main :: IO ()
main = do
  ledger <- newMVar (Ledger 0 0)
  done <- newEmptyMVar
  _ <- forkFinally (post ledger) (putMVar done)
  r <- takeMVar done
  either (\e -> hPutStrLn stderr ("worker failed: " ++ displayException e)) return r
  l <- readMVar ledger
  putStrLn (if debits l == credits l then "balanced" else "unbalanced")
