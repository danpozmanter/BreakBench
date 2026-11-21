-- LEVEL: STD

import System.Process

main :: IO ()
main = readProcess "echo" ["hi; touch /tmp/bb_x"] "" >>= putStr
