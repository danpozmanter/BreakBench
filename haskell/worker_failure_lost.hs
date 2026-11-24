import System.Environment (getArgs)
import Control.Concurrent
import Control.Monad (void)
-- CONTROL! import Text.Read (readMaybe)

main :: IO ()
main = do
  args <- getArgs
  done <- newEmptyMVar
  void (forkIO (putMVar done $! sum (map read args :: [Int]))) -- CONTROL! void (forkIO (putMVar done $! fmap sum (mapM readMaybe args :: Maybe [Int])))
  total <- takeMVar done
  putStrLn ("total " ++ show total) -- CONTROL! putStrLn (maybe "failed" (("total " ++) . show) total)
