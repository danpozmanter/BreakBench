-- LEVEL: STD

import Data.Fixed (Centi)

main :: IO ()
main = putStrLn (if (0.1 + 0.2 :: Centi) == 0.3 then "equal" else "not equal")
