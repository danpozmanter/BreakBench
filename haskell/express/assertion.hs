-- LEVEL: STD

import Control.Exception (assert)

main :: IO ()
main = do
  putStrLn "before"
  assert False (return ())
  putStrLn "after"
