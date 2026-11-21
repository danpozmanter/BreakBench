import Data.IORef

newtype Rec = Rec { value :: Int }

main :: IO ()
main = do
  a <- newIORef (Just (Rec 1234))
  Just b <- readIORef a
  writeIORef a Nothing
  others <- mapM (const (newIORef (Rec 6666))) [1 .. 16 :: Int]
  print (length others `seq` value b)
