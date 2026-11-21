import Data.IORef

newtype Rec = Rec { value :: Int }

main :: IO ()
main = do
  a <- newIORef (Just (Rec 0))
  writeIORef a Nothing
  writeIORef a Nothing
  x <- newIORef (Rec 1)
  y <- newIORef (Rec 2)
  _ <- readIORef y
  readIORef x >>= print . value
