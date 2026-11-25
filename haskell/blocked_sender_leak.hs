import Control.Concurrent
import Control.Monad (forM)

firstAnswer :: IO (Int, [MVar ()])
firstAnswer = do
  answers <- newEmptyMVar
  workers <- forM [1 :: Int, 2] $ \_ -> do
    finished <- newEmptyMVar
    _ <- forkIO (putMVar answers 42 >> putMVar finished ())
    pure finished
  answer <- takeMVar answers
  pure (answer, workers)

main :: IO ()
main = do
  (answer, workers) <- firstAnswer
  print answer
  mapM_ takeMVar workers
  putStrLn "done"
