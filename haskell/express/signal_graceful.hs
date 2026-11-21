-- LEVEL: STD

import Control.Concurrent
import Control.Monad
import System.Posix.Signals

main :: IO ()
main = do
  done <- newEmptyMVar
  void (installHandler sigTERM (Catch (putMVar done ())) Nothing)
  raiseSignal sigTERM
  takeMVar done
  putStrLn "cleaned up"
