-- LEVEL: LANGUAGE

import Data.IORef

square :: Int -> Int
square x = x * x

squareCounted :: IORef Int -> Int -> Int -- REJECT!
squareCounted ref x = do { modifyIORef ref (+ 1); return (x * x) } -- REJECT!

main :: IO ()
main = print (square 7)
