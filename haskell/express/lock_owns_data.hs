-- LEVEL: STD

import Control.Concurrent
import Control.Monad

data Ledger = Ledger { debits :: Int, credits :: Int }

main :: IO ()
main = do
  ledger <- newMVar (Ledger 0 0)
  dones <- forM [1, 2 :: Int] $ \_ -> do
    done <- newEmptyMVar
    _ <- forkIO $ do
      replicateM_ 1000 (modifyMVar_ ledger (\l -> return l { debits = debits l + 1, credits = credits l + 1 }))
      putMVar done ()
    return done
  mapM_ takeMVar dones
  print (debits ledger) -- REJECT!
  l <- readMVar ledger
  putStrLn (show (debits l) ++ " " ++ show (credits l))
