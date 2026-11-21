-- LEVEL: PROJECT

{-# LANGUAGE OverloadedStrings #-}

import Data.Aeson
import qualified Data.ByteString.Lazy.Char8 as BL

data Config = Config {port :: Int, debug :: Bool}

instance FromJSON Config where
  parseJSON = withObject "Config" (\o -> Config <$> o .: "port" <*> o .: "debug")

main :: IO ()
main = do
  let good = eitherDecode (BL.pack "{\"port\": 8080, \"debug\": true}") :: Either String Config
      bad = eitherDecode (BL.pack "{port: 8080}") :: Either String Config
  case good of
    Left err -> putStrLn err
    Right c -> putStrLn (show (port c) ++ " " ++ either (const "invalid") (const "valid") bad)
