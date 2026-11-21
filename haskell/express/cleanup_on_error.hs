-- LEVEL: STD

{-# LANGUAGE ScopedTypeVariables #-}

import Control.Exception

useResource :: Bool -> IO ()
useResource failing = (if failing then throwIO (userError "boom") else return ()) `finally` putStrLn "released"

main :: IO ()
main = do
  useResource False
  useResource True `catch` \(_ :: IOException) -> return ()
