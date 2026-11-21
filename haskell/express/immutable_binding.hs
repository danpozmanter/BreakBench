-- LEVEL: LANGUAGE

import Data.IORef (writeIORef)

main :: IO ()
main = do
  let x = 1 :: Int
  writeIORef x 2 -- REJECT!
  print x
