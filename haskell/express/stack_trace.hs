-- LEVEL: STD

import GHC.Stack

inner :: HasCallStack => [(String, SrcLoc)]
inner = getCallStack callStack

main :: IO ()
main = putStrLn (if any ((== "inner") . fst) inner then "inner" else "missing")
