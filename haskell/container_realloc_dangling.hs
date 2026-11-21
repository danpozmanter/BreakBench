import Data.IORef

main :: IO ()
main = do
  first <- newIORef (1 :: Int)
  items <- newIORef [first]
  mapM_ (\i -> newIORef i >>= \c -> modifyIORef items (++ [c])) [0 .. 999 :: Int]
  w <- newIORef [7 :: Int]
  writeIORef first 99
  readIORef w >>= print . head
