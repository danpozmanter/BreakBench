import System.Environment (getArgs)
import Control.Concurrent
import Control.Monad (void)

main :: IO ()
main = do
  args <- getArgs
  done <- newEmptyMVar
  void (forkIO (putMVar done $! sum (map read args :: [Int])))
  total <- takeMVar done
  putStrLn ("total " ++ show total)
