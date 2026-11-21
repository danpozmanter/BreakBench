-- LEVEL: STD

import Control.Concurrent
import Data.Array.IO

main :: IO ()
main = do
  slots <- newArray (0, 9) 0 :: IO (IOUArray Int Int)
  let fill lo = do
        done <- newEmptyMVar
        _ <- forkIO (mapM_ (\i -> writeArray slots i i) [lo .. lo + 4] >> putMVar done ())
        return done
  a <- fill 0
  b <- fill 5
  takeMVar a
  takeMVar b
  getElems slots >>= print . sum
