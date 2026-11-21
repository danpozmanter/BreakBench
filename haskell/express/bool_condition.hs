-- LEVEL: LANGUAGE

import Control.Monad (when)

compareText :: String -> String -> Int
compareText a b = fromEnum (compare a b) - 1

main :: IO ()
main = do
  when (compareText "x" "x" == 0) (putStrLn "same")
  when (compareText "x" "x") (putStrLn "different") -- REJECT!
