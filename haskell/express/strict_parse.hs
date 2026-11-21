-- LEVEL: STD

import Text.Read (readMaybe)

main :: IO ()
main = putStrLn (maybe "invalid" show (readMaybe "12abc" :: Maybe Int))
