{-# LANGUAGE OverloadedStrings #-}

import Data.Aeson
import qualified Data.Aeson.KeyMap as KeyMap
import qualified Data.ByteString.Lazy.Char8 as BL

main :: IO ()
main = case decode "{\"id\": 9007199254740993}" of
  Just (Object event) -> maybe (putStrLn "missing") (BL.putStrLn . encode) (KeyMap.lookup "id" event)
  _ -> putStrLn "not an object"
