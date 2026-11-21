-- LEVEL: STD

{-# LANGUAGE ScopedTypeVariables #-}

import Control.Exception
import Control.Exception.Context (getExceptionAnnotations)
import System.IO.Error (ioeGetErrorString)

loadConfig :: IO ()
loadConfig =
  throwIO (userError "not found") `catch` \(e :: IOException) ->
    throwIO (userError ("loading config: " ++ ioeGetErrorString e))

main :: IO ()
main = loadConfig `catch` \(ExceptionWithContext ctx (e :: IOException)) -> do
  putStrLn (ioeGetErrorString e)
  mapM_ (\(WhileHandling cause) -> mapM_ (putStrLn . ioeGetErrorString) (fromException cause))
    (getExceptionAnnotations ctx)
