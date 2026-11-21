import Data.IORef (writeIORef)

newtype Config = Config {port :: Int}

main :: IO ()
main = do
  let c = Config {port = 8080}
  writeIORef (port c) 1 -- BREAK!
  print (port c)
