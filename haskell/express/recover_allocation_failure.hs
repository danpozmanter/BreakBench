-- LEVEL: STD

{-# LANGUAGE ScopedTypeVariables #-}

import Control.Exception
import qualified Data.ByteString as BS
import System.Environment

main :: IO ()
main = do
  args <- getArgs
  r <- try (evaluate (BS.length (BS.replicate (read (concat args)) 0)))
  case r of
    Left (_ :: AsyncException) -> putStrLn "allocation failed"
    Right n -> print n
