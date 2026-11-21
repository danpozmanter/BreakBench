-- LEVEL: STD

import Control.Exception

data A = A deriving Show
instance Exception A

data B = B deriving Show
instance Exception B

handleA :: IO () -> IO ()
handleA f = f `catch` \A -> putStrLn "caught A"

main :: IO ()
main = do
  handleA (throwIO A)
  handleA (throwIO B) `catch` \B -> putStrLn "passed B"
