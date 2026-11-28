{-# LANGUAGE DeriveGeneric, OverloadedStrings #-}

import Data.Aeson
import GHC.Generics (Generic)

data User = User { name :: String, age :: Int } deriving (Generic)

instance FromJSON User

main :: IO ()
main = case decode "{\"name\": \"Ada\"}" :: Maybe User of -- CONTROL! main = case decode "{\"name\": \"Ada\", \"age\": 36}" :: Maybe User of
  Just user -> print (age user + 1)
  Nothing -> putStrLn "invalid"
