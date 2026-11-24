import Data.IORef

transfer :: IORef Int -> IORef Int -> Int -> IO ()
transfer from to amount = do -- CONTROL! transfer from to amount = if from == to then return () else do
  f <- readIORef from
  t <- readIORef to
  writeIORef from (f - amount)
  writeIORef to (t + amount)

main :: IO ()
main = do
  a <- newIORef 100
  transfer a a 30
  readIORef a >>= print
