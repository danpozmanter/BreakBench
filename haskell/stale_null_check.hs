import Data.IORef

newtype User = User { name :: String }

newtype Session = Session { user :: Maybe User }

logout :: IORef Session -> IO ()
logout ref = writeIORef ref (Session Nothing)

main :: IO ()
main = do
  ref <- newIORef (Session (Just (User "alice")))
  session <- readIORef ref
  case user session of
    Just u -> do
      logout ref
      print (length (name u))
    Nothing -> pure ()
