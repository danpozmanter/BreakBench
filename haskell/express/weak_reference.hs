-- LEVEL: STD

import Data.IORef
import System.Mem (performGC)
import System.Mem.Weak (deRefWeak)

main :: IO ()
main = do
  w <- newIORef "payload" >>= \r -> mkWeakIORef r (return ())
  performGC
  alive <- deRefWeak w
  putStrLn (maybe "gone" (const "alive") alive)
