import Text.Read (readMaybe)

parseOrder :: String -> Maybe Int
parseOrder line = readMaybe (parts !! 2) -- BREAK!
-- CONTROL! parseOrder line = readMaybe (parts !! 1)
  where parts = words (map (\c -> if c == ',' then ' ' else c) line)

main :: IO ()
main = putStrLn (maybe "invalid order" show (parseOrder "widget,5"))
