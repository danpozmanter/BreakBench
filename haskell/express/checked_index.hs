-- LEVEL: STD

import Data.List ((!?))

main :: IO ()
main = putStrLn (maybe "none" show ([10, 20, 30 :: Int] !? 5))
