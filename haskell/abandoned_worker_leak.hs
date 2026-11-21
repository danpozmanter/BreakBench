import System.Environment (getArgs)
import Control.Concurrent
import Control.Monad (forM_, void, when)

main :: IO ()
main = do
  args <- getArgs
  let rounds = read (head args) :: Int
  forM_ [0 .. rounds - 1] $ \i -> do
    answers <- newEmptyMVar
    forM_ [0, 1] $ \w -> void (forkIO (putMVar answers $! replicate 8192 (i + w)))
    first <- takeMVar answers
    when (length first /= 8192) (putStrLn "short")
  putStrLn "done"
