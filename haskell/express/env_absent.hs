-- LEVEL: STD

import System.Environment

main :: IO ()
main = lookupEnv "BB_UNSET" >>= putStrLn . maybe "absent" ("present: " ++)
