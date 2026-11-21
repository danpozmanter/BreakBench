-- LEVEL: LANGUAGE

import Control.Concurrent.MVar
import Data.IORef

plain :: IORef Int -- REJECT!
plain = newIORef 0 -- REJECT!

main :: IO ()
main = do
  hits <- newMVar (0 :: Int)
  let hit = modifyMVar_ hits (return . (+ 1))
  hit
  hit
  readMVar hits >>= print
