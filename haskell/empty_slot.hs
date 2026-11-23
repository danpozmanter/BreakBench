import Data.Array.IO

newtype User = User { name :: String }

main :: IO ()
main = do
  users <- newArray (0, 2) Nothing :: IO (IOArray Int (Maybe User))
  writeArray users 1 (Just (User "bob"))
  writeArray users 2 (Just (User "carol"))
  first <- readArray users 0
  print (length (name first)) -- BREAK!
  -- CONTROL! print (maybe 0 (length . name) first)
